use crate::error::ContractError::WalletHasNoBalanceDefined;
use crate::state::State;
use crate::action::{QueryResponseMsg::Balance, ActionResult};
use crate::contract_utils::handler_result::HandlerResult::QueryResponse;

pub fn balance(state: State, target: String) -> ActionResult {
    if !state.balances.contains_key(&target) {
        Err(WalletHasNoBalanceDefined(target))
    } else {
        Ok(QueryResponse(
            Balance {
                balance: *state.balances.get( & target).unwrap(),
                ticker: state.ticker,
                target
            }
        ))
    }
}
