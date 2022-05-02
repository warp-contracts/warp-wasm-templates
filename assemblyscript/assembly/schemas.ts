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
  value: string | null;
  qty: i32;
}

@serializable
export class ResultSchema {
  balance: i32;
  target: string;
  ticker: string;
}

@serializable
export class HandlerResultSchema {
  state: StateSchema | null;
  result: ResultSchema | null;
}
