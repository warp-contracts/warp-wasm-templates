import { ActionSchema, HandlerResultSchema, StateSchema } from '../schemas';
import { Transaction } from '../imports/smartweave/transaction';
import { console } from '../imports/console';

export function transfer(
  state: StateSchema,
  action: ActionSchema
): HandlerResultSchema {
  const target = action.target;
  const qty = action.qty;
  const caller = Transaction.owner();

  if (qty <= 0 || caller == target) {
    throw new Error('[CE:ITT] Invalid token transfer');
  }

  if (!state.balances.has(caller) || state.balances.get(caller) < qty) {
    throw new Error(
      `[CE:NEB] Caller balance not high enough to send ${qty} token(s)!`
    );
  }

  // Lower the token balance of the caller
  state.balances.set(caller, state.balances.get(caller) - qty);
  if (!state.balances.has(target)) {
    state.balances.set(target, qty);
  } else {
    state.balances.set(target, state.balances.get(target) + qty);
  }

  console.log(`Balance ${state.balances.get(target)}`);
  console.log(`Balance ${state.balances.get(caller)}`);

  return {
    state,
    result: null,
  };
}
