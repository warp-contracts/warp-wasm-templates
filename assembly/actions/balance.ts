import { ActionSchema, HandlerResultSchema, StateSchema } from '../schemas';

export function balance(
  state: StateSchema,
  action: ActionSchema
): HandlerResultSchema {
  const target = action.target;

  if (!target) {
    throw new Error('[CE:NOB] Must specify target to get balance for');
  }

  if (!state.balances.has(target)) {
    throw new Error('[CE:TNE] Cannot get balance, target does not exist');
  }

  return {
    state,
    result: {
      balance: state.balances.get(target),
    },
  };
}
