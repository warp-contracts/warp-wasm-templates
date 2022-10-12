import {
  WriteInteractionOptions,
  WriteInteractionResponse,
  Contract,
  Warp,
  ArWallet,
  ContractError,
  EvaluationOptions,
  DefaultEvaluationOptions
} from 'warp-contracts';
import { Balance } from './ReadAction';
import { Transfer, Evolve, ForeignRead, ForeignWrite } from './WriteAction';
import { BalanceResult } from './ReadResponse';
import { State } from './State';
export class TestContractImpl {
  readonly contract: Contract<State>;

  constructor(
    contractId: string,
    warp: Warp,
    evaluationOptions: Partial<EvaluationOptions> = new DefaultEvaluationOptions()
  ) {
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

  async balance(balance: Balance): Promise<BalanceResult> {
    const interactionResult = await this.contract.viewState<any, BalanceResult>({ function: 'balance', ...balance });
    if (interactionResult.type == 'error') {
      throw new ContractError(interactionResult.errorMessage);
    } else if (interactionResult.type == 'exception') {
      throw Error(interactionResult.errorMessage);
    }
    return interactionResult.result;
  }

  async transfer(transfer: Transfer, options?: WriteInteractionOptions): Promise<WriteInteractionResponse | null> {
    return await this.contract.writeInteraction<any>({ function: 'transfer', ...transfer }, options);
  }

  async evolve(evolve: Evolve, options?: WriteInteractionOptions): Promise<WriteInteractionResponse | null> {
    return await this.contract.writeInteraction<any>({ function: 'evolve', ...evolve }, options);
  }

  async foreignRead(
    foreignRead: ForeignRead,
    options?: WriteInteractionOptions
  ): Promise<WriteInteractionResponse | null> {
    return await this.contract.writeInteraction<any>({ function: 'foreignRead', ...foreignRead }, options);
  }

  async foreignWrite(
    foreignWrite: ForeignWrite,
    options?: WriteInteractionOptions
  ): Promise<WriteInteractionResponse | null> {
    return await this.contract.writeInteraction<any>({ function: 'foreignWrite', ...foreignWrite }, options);
  }
}
