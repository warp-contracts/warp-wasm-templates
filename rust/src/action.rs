use serde::{Deserialize, Serialize};

use crate::contract_utils::handler_result::HandlerResult;
use crate::error::ContractError;
use crate::state::State;

#[derive(Deserialize)]
#[serde(rename_all = "camelCase", tag = "function")]
pub enum Action {
    Transfer {
        qty: u64,
        target: String,
    },
    Balance {
        target: String
    },
    Evolve {
        value: String
    },
    #[serde(rename_all = "camelCase")]
    ForeignRead {
        contract_tx_id: String
    },
    #[serde(rename_all = "camelCase")]
    ForeignWrite {
        contract_tx_id: String,
        qty: u64,
        target: String,
    },
}

#[derive(Serialize, Deserialize)]
#[serde(rename_all = "camelCase", untagged)]
pub enum QueryResponseMsg {
    Balance {
        balance: u64,
        ticker: String,
        target: String,
    },
}

pub type ActionResult = Result<HandlerResult<State, QueryResponseMsg>, ContractError>;
