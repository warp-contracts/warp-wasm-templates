use warp_pst::{
    action::{ActionResult, HandlerResult, BalanceResult, ReadResponse, Balance},
    error::ContractError,
    state::State,
};
use warp_wasm_utils::contract_utils::js_imports::log;

use super::Actionable;

impl Actionable for Balance {
    fn action(self, caller: String, state: State) -> ActionResult {
        if !state.balances.contains_key(&self.target) {
            Err(ContractError::WalletHasNoBalanceDefined(self.target))
        } else {
            let balance_response = BalanceResult {
                balance: *state.balances.get( & self.target).unwrap(),
                ticker: state.ticker,
                target: self.target
            };
            Ok(HandlerResult::Read(
                ReadResponse::BalanceResult(balance_response)
            ))
        }
    }
}
