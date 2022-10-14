use warp_pst::action::{ActionResult, HandlerResult, ForeignWrite};
use warp_pst::error::ContractError;
use warp_pst::state::State;
use warp_wasm_utils::contract_utils::foreign_call::write_foreign_contract;
use async_trait::async_trait;
use warp_wasm_utils::contract_utils::js_imports::log;
use serde::{Deserialize, Serialize};
// use warp_wasm_utils::contract_utils::actionable::AsyncActionable;

use super::{AsyncActionable};

#[derive(Serialize)]
struct Input {
    function: String,
    qty: u64,
    target: String
}

#[derive(Deserialize)]
struct Result {
    state: State,
    #[serde(rename = "type")]
    result_type: String,
}

#[async_trait(?Send)]
impl AsyncActionable for ForeignWrite {
    async fn action(self, caller: String, mut state: State) -> ActionResult {
        let result: Result =
            write_foreign_contract(&self.contract_tx_id, Input{
                function: "transfer".to_string(),
                qty: self.qty,
                target: self.target
            }).await;
    
        log(("Write done! ".to_owned() + &result.state.ticker).as_str());
        log(("Result type ".to_owned() + &result.result_type).as_str());
    
        Ok(HandlerResult::Write(state))
    }
}
