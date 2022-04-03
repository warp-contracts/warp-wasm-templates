use crate::error::ContractError;
use crate::state::State;
use crate::contract_utils::foreign_call::read_foreign_contract_state;
use crate::action::ActionResult;
use crate::contract_utils::handler_result::HandlerResult;
use crate::contract_utils::js_imports::log;

pub async fn foreign_read(mut state: State, contract_tx_id: String) -> ActionResult {
    if contract_tx_id == "bad_contract" {
        Err(ContractError::IDontLikeThisContract)
    } else {
        let foreign_contract_state: State =
            read_foreign_contract_state(&contract_tx_id).await;

        // Some dummy logic - just for the sake of the integration test
        if foreign_contract_state.ticker == "FOREIGN_PST" {
            log("Adding to tokens");
            for val in state.balances.values_mut() {
                *val += 1000;
            }
        }

        Ok(HandlerResult::NewState(state))
    }
}
