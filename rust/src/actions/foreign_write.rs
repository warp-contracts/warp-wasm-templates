use serde::{Deserialize, Serialize};

use crate::action::ActionResult;
use crate::contract_utils::foreign_call::write_foreign_contract;
use crate::contract_utils::handler_result::HandlerResult;
use crate::contract_utils::js_imports::{log};
use crate::state::State;

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

pub async fn foreign_write(state: State, contract_tx_id: String, qty: u64, target: String) -> ActionResult {
    let result: Result =
        write_foreign_contract(&contract_tx_id, Input{
            function: "transfer".to_string(),
            qty,
            target
        }).await;

    log(("Write done! ".to_owned() + &result.state.ticker).as_str());
    log(("Result type ".to_owned() + &result.result_type).as_str());

    Ok(HandlerResult::NewState(state))
}
