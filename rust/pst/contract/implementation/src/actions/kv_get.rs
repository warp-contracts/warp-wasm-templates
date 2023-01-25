use async_trait::async_trait;
use warp_pst::{
    action::{ActionResult, HandlerResult, KvGetResult, ReadResponse, KvGet},
    state::State,
};
use warp_wasm_utils::contract_utils::kv_operations::kv_get;

use super::AsyncActionable;

#[async_trait(?Send)]
impl AsyncActionable for KvGet {
    async fn action(self, _caller: String, _state: State) -> ActionResult {
        match kv_get(&self.key).await {
            Ok(a) =>
                Ok(HandlerResult::Read(ReadResponse::KvGetResult(KvGetResult { key: self.key, value: a }))),
            Err(_) =>
                // handle the error!
                Ok(HandlerResult::Read(ReadResponse::KvGetResult(KvGetResult { key: self.key, value: "".to_owned() }))),
        }
    }
}
