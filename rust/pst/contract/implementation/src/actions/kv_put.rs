use async_trait::async_trait;
use warp_pst::{
    action::{ActionResult, HandlerResult, KvPut},
    error::ContractError,
    state::State,
};
use warp_wasm_utils::contract_utils::{js_imports::{log, Transaction}, kv_operations::kv_put};

use super::AsyncActionable;

#[async_trait(?Send)]
impl AsyncActionable for KvPut {
    async fn action(self, caller: String, state: State) -> ActionResult {
        let owner = Transaction::owner();
        log(&format!("caller {caller}"));
        log(&format!("Transaction owner {owner}"));

        match kv_put(&self.key, &self.value).await {
            Err(e) => Err(ContractError::RuntimeError(e)),
            Ok(_) => Ok(HandlerResult::Write(state))
        }
    }
}
