use async_trait::async_trait;
use warp_pst::{action::ActionResult, state::State};

pub mod balance;
pub mod evolve;
pub mod foreign_read;
pub mod foreign_write;
pub mod transfer;

pub use balance::*;
pub use evolve::*;
pub use foreign_read::*;
pub use foreign_write::*;
pub use transfer::*;

use warp_wasm_utils::contract_utils::js_imports::log;

pub trait Actionable {
    fn action(self, caller: String, state: State) -> ActionResult;
}

#[async_trait(?Send)]
pub trait AsyncActionable {
    async fn action(self, caller: String, state: State) -> ActionResult;
}
