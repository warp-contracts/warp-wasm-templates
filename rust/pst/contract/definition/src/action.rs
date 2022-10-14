use schemars::JsonSchema;
use serde::{Deserialize, Serialize};
use strum_macros::EnumIter;

use crate::error::ContractError;
use crate::state::{State};

#[derive(JsonSchema, Clone, Debug, Serialize, Deserialize, Hash, PartialEq, Eq, Default)]
#[serde(rename_all = "camelCase")]
pub struct Balance {
    pub target: String
}

#[derive(JsonSchema, Clone, Debug, Serialize, Deserialize, Hash, PartialEq, Eq, Default)]
#[serde(rename_all = "camelCase")]
pub struct Transfer {
    pub qty: u64,
    pub target: String
}

#[derive(JsonSchema, Clone, Debug, Serialize, Deserialize, Hash, PartialEq, Eq, Default)]
#[serde(rename_all = "camelCase")]
pub struct Evolve {
    pub value: String
}

#[derive(JsonSchema, Clone, Debug, Serialize, Deserialize, Hash, PartialEq, Eq, Default)]
#[serde(rename_all = "camelCase")]
pub struct ForeignRead {
    pub contract_tx_id: String
}

#[derive(JsonSchema, Clone, Debug, Serialize, Deserialize, Hash, PartialEq, Eq, Default)]
#[serde(rename_all = "camelCase")]
pub struct ForeignWrite {
    pub contract_tx_id: String,
    pub qty: u64,
    pub target: String,
}

#[derive(JsonSchema, Clone, Debug, Serialize, Deserialize, Hash, PartialEq, Eq)]
#[serde(rename_all = "camelCase", tag = "function")]
pub enum Action {
    Balance(Balance),

    Transfer(Transfer),

    Evolve(Evolve),

    ForeignRead(ForeignRead),
    
    ForeignWrite(ForeignWrite)
}

#[derive(JsonSchema, Clone, Debug, Serialize, Deserialize, Hash, PartialEq, Eq, EnumIter)]
#[serde(rename_all = "camelCase", tag = "function")]
pub enum View {
    Balance(Balance),
    BalanceResult(BalanceResult)
}

#[derive(JsonSchema, Clone, Debug, Serialize, Deserialize, Hash, PartialEq, Eq, EnumIter)]
#[serde(rename_all = "camelCase", tag = "function")]
pub enum WriteAction {
    Transfer(Transfer),

    Evolve(Evolve),

    ForeignRead(ForeignRead),
    
    ForeignWrite(ForeignWrite)
}

#[derive(JsonSchema, Clone, Debug, Serialize, Deserialize, Hash, PartialEq, Eq, Default)]
#[serde(rename_all = "camelCase")]
pub struct BalanceResult {
    pub balance: u64,
    pub ticker: String,
    pub target: String,
}

#[derive(JsonSchema, Clone, PartialEq, Debug, Serialize, Deserialize, Hash, Eq, EnumIter)]
#[serde(rename_all = "camelCase", tag = "function")]
pub enum ReadResponse {
    BalanceResult(BalanceResult)
}

#[derive(Serialize, Deserialize)]
#[serde(untagged)]
pub enum HandlerResult {
    Write(State),
    Read(ReadResponse),
}

pub type ActionResult = Result<HandlerResult, ContractError>;
