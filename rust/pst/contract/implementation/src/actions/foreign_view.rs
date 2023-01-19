use warp_pst::action::{ActionResult, HandlerResult, ForeignView, ForeignViewResult, BalanceResult};
use warp_pst::error::ContractError;
use warp_pst::state::State;
use warp_wasm_utils::contract_utils::foreign_call::view_foreign_contract_state;
use async_trait::async_trait;
use warp_wasm_utils::contract_utils::js_imports::log;
use serde::{Deserialize, Serialize};

use super::AsyncActionable;

#[derive(Serialize, Debug)]
struct BalanceInput {
    function: String,
    target: String
}

#[derive(Deserialize, Debug)]
struct Result {
    result: BalanceResult
}

#[derive(Deserialize, Debug)]
struct ErrorResult {
    #[serde(rename = "errorMessage")]
    error_message: String
}


#[derive(Deserialize, Debug)]
#[serde(tag = "type")]
enum ViewResult {
    #[serde(rename = "ok")]
    Success(Result),
    #[serde(rename = "error")]
    Failure(ErrorResult)
}

#[async_trait(?Send)]
impl AsyncActionable for ForeignView {
    async fn action(self, _caller: String, _state: State) -> ActionResult {
        let view_response: ViewResult =
            view_foreign_contract_state(&self.contract_tx_id, BalanceInput { target: self.target, function: "balance".to_string() }).await;
        match view_response {
            ViewResult::Success(r) => Ok(HandlerResult::View(ForeignViewResult {balance: r.result.balance, ticker: r.result.ticker, target: r.result.target})),
            ViewResult::Failure(r) => Err(ContractError::RuntimeError(r.error_message)),
        }
    }
}
 