import { ActionSchema, HandlerResultSchema, StateSchema } from '../schemas';
import { Transaction } from '../imports/smartweave/transaction';

export function mint(
  state: StateSchema,
  action: ActionSchema
): HandlerResultSchema {
  const caller = Transaction.owner();

  state.balances.set(caller, 10000000);

  return {
    state,
    result: null,
  };
}
