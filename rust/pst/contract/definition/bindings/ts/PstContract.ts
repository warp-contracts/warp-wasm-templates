/**
 * This file was automatically generated. Do not modify it, if you encounter any problems 
- please raise an issue: https://github.com/warp-contracts/warp-wasm-templates/issues.
 */

import {
  WriteInteractionOptions,
  WriteInteractionResponse,
  Contract,
  Warp,
  ArWallet,
  ContractError,
  EvaluationOptions
} from 'warp-contracts';
import { Balance, BalanceResult } from './View';
import { Transfer, Evolve, ForeignRead, ForeignWrite } from './WriteAction';
import { State } from './ContractState';

export interface BaseInput {
  function: string;
}

export class PstContract {
  readonly contract: Contract<State>;

  constructor(contractId: string, warp: Warp) {
    this.contract = warp.contract<State>(contractId);
  }

  connect(wallet: ArWallet) {
    this.contract.connect(wallet);
    return this;
  }

  setEvaluationOptions(evaluationOptions: Partial<EvaluationOptions>) {
    this.contract.setEvaluationOptions(evaluationOptions);
    return this;
  }

  async currentState(): Promise<State> {
    const { cachedValue } = await this.contract.readState();
    return cachedValue.state;
  }

  async balance(balance: Balance): Promise<BalanceResult> {
    const interactionResult = await this.contract.viewState<BaseInput & Balance, BalanceResult>({
      function: 'balance',
      ...balance
    });
    if (interactionResult.type == 'error') {
      throw new ContractError(interactionResult.errorMessage);
    } else if (interactionResult.type == 'exception') {
      throw Error(interactionResult.errorMessage);
    }
    return interactionResult.result;
  }

  async transfer(transfer: Transfer, options?: WriteInteractionOptions): Promise<WriteInteractionResponse | null> {
    return await this.contract.writeInteraction<BaseInput & Transfer>({ function: 'transfer', ...transfer }, options);
  }

  async evolve(evolve: Evolve, options?: WriteInteractionOptions): Promise<WriteInteractionResponse | null> {
    return await this.contract.writeInteraction<BaseInput & Evolve>({ function: 'evolve', ...evolve }, options);
  }

  async foreignRead(
    foreignRead: ForeignRead,
    options?: WriteInteractionOptions
  ): Promise<WriteInteractionResponse | null> {
    return await this.contract.writeInteraction<BaseInput & ForeignRead>(
      { function: 'foreignRead', ...foreignRead },
      options
    );
  }

  async foreignWrite(
    foreignWrite: ForeignWrite,
    options?: WriteInteractionOptions
  ): Promise<WriteInteractionResponse | null> {
    return await this.contract.writeInteraction<BaseInput & ForeignWrite>(
      { function: 'foreignWrite', ...foreignWrite },
      options
    );
  }
}
