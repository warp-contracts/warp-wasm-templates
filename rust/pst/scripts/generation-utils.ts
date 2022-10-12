import { writeFileSync } from 'node:fs';
import { join } from 'node:path';

export const writeImplementationFile = async (bindings: any, actions: any[]) => {
  let resImpl = ``;
  const actionsRead = getActionsName(actions[0]);
  const actionsWrite = getActionsName(actions[1]);
  const actionsResponse = getActionsName(actions[2]);

  resImpl = `import { WriteInteractionOptions, WriteInteractionResponse, Contract, Warp, ArWallet, ContractError, EvaluationOptions, DefaultEvaluationOptions } from 'warp-contracts';\nimport { ${actionsRead} } from './ReadAction';\nimport { ${actionsWrite} } from './WriteAction';\nimport { ${actionsResponse} } from './ReadResponse';\nimport { State } from './State';\n`;
  resImpl += `export class TestContractImpl {
        readonly contract: Contract<State>;

        constructor(contractId: string, warp: Warp, evaluationOptions: Partial<EvaluationOptions> = new DefaultEvaluationOptions()) {
          this.contract = warp.contract<State>(contractId).setEvaluationOptions(evaluationOptions);
        }

            async connect(wallet: ArWallet) {
                this.contract.connect(wallet);
                return this;
              }

            async currentState(): Promise<State> {
                const { cachedValue } = await this.contract.readState();
                return cachedValue.state;
              }

        \n`;
  for (const readObj of actions[0].oneOf) {
    resImpl += generateInteractions(readObj, true);
  }
  for (const writeObj of actions[1].oneOf) {
    resImpl += generateInteractions(writeObj, false);
  }
  resImpl += `}`;
  writeFileSync(join(bindings, 'Implementation.ts'), resImpl);
};

const generateInteractions = (functionObj: any, read: boolean) => {
  const interactionName = functionObj.examples[0].function;
  const interactionNameUpper = interactionName.charAt(0).toUpperCase() + interactionName.slice(1);
  if (read) {
    return `async ${interactionName}(${interactionName}: ${interactionNameUpper}): Promise<${interactionNameUpper}Result> {
            const interactionResult = await this.contract.viewState<any, ${interactionNameUpper}Result>({ function: '${interactionName}', ...${interactionName} });
            if (interactionResult.type == 'error') {
              throw new ContractError(interactionResult.errorMessage);
            } else if (interactionResult.type == 'exception') {
                throw Error(interactionResult.errorMessage);
            }
            return interactionResult.result;
          }\n\n`;
  } else {
    return `async ${interactionName}(
            ${interactionName}: ${interactionName.charAt(0).toUpperCase() + interactionName.slice(1)}, 
            options?: WriteInteractionOptions
            ): Promise<WriteInteractionResponse | null> {
            return await this.contract.writeInteraction<any>(
                { function: '${interactionName}', ...${interactionName} }, 
                options
                );
          }\n\n`;
  }
};

export const interfaceString = (interfaceName: string, properties: string) => {
  return `export interface ${interfaceName}{ ${properties}}\n`;
};

const getFunctionNames = (list: any[]) => {
  const functionNames = [];
  for (const typeObj of list) {
    const functionName = typeObj.examples[0].function;
    functionName != 'function' && functionNames.push(functionName.charAt(0).toUpperCase() + functionName.slice(1));
  }
  return functionNames;
};

const getActionsName = (action: any) => {
  let actionsName = ``;
  let actionsFunctions = [];
  actionsFunctions = [...actionsFunctions, ...getFunctionNames(action.oneOf || action.anyOf)];
  actionsFunctions.forEach((a) => {
    actionsFunctions.indexOf(a) == actionsFunctions.length - 1 ? (actionsName += a) : (actionsName += `${a}, `);
  });
  return actionsName;
};
