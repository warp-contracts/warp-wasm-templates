use warp_pst::action::{ActionResult, ForeignRead, HandlerResult};
use warp_pst::error::ContractError;
use warp_pst::state::State;
use warp_wasm_utils::contract_utils::foreign_call::read_foreign_contract_state;
use warp_wasm_utils::contract_utils::js_imports::log;

use async_trait::async_trait;

use warp_wasm_utils::contract_utils::js_imports::Transaction;

use super::AsyncActionable;

#[async_trait(?Send)]
impl AsyncActionable for ForeignRead {
    async fn action(self, caller: String, mut state: State) -> ActionResult {
        if self.contract_tx_id == "bad_contract" {
            Err(ContractError::IDontLikeThisContract)
        } else {
            let foreign_contract_state: State =
                read_foreign_contract_state(&self.contract_tx_id).await;
    
            // Some dummy logic - just for the sake of the integration test
            if foreign_contract_state.ticker == "FOREIGN_PST" {
                log("Adding to tokens");
                for val in state.balances.values_mut() {
                    *val += 1000;
                }
            }
    
            Ok(HandlerResult::Write(state))
        }
    }
}
