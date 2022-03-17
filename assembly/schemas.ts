@serializable
export class StateSchema {
  balances: Map<string, i32> = new Map<string, i32>();
  canEvolve: boolean;
  evolve: string | null;
  name: string;
  owner: string;
  ticker: string;
}

@serializable
export class ActionSchema {
  function: string;
  contractTxId: string | null;
  target: string;
  evolve: string | null;
  qty: i32;
}

@serializable
export class ResultSchema {
  balance: i32;
}

@serializable
export class SmartweaveSchema {
  contract: ContractSchema;
  sender: string;
  block: BlockSchema;
  transaction: TransactionSchema;
}

@serializable
export class BlockSchema {
  height: i32;
  indep_hash: string;
  timestamp: i32;
}

@serializable
export class TransactionSchema {
  id: string;
  owner: string;
  target: string;
}

@serializable
export class ContractSchema {
  id: string;
  owner: string;
}

@serializable
export class HandlerResultSchema {
  state: StateSchema;
  result: ResultSchema | null;
}
