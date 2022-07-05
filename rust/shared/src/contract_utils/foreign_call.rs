use serde::de::DeserializeOwned;
use serde::Serialize;
use wasm_bindgen::JsValue;

use super::js_imports::SmartWeave;

pub async fn read_foreign_contract_state<T: DeserializeOwned>(contract_address: &str) -> T {
    let state: T = SmartWeave::read_contract_state(contract_address)
        .await
        .into_serde()
        .unwrap(); // TODO: not sure if it won't case panics. Maybe it's better to return Result<T, ContractError>

    return state;
}

pub async fn write_foreign_contract<T: DeserializeOwned, I: Serialize>(
    contract_address: &str,
    input: I,
) -> T {
    let result: T = SmartWeave::write(contract_address, JsValue::from_serde(&input).unwrap())
        .await
        .into_serde()
        .unwrap();

    return result;
}