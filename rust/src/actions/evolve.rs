use crate::error::ContractError::{EvolveNotAllowed, OnlyOwnerCanEvolve};
use crate::state::{State};
use crate::contract_utils::js_imports::Transaction;
use crate::action::ActionResult;
use crate::contract_utils::handler_result::HandlerResult;

pub fn evolve(mut state: State, value: String) -> ActionResult {
    match state.can_evolve {
        Some(can_evolve) => if can_evolve && state.owner == Transaction::owner() {
            state.evolve = Option::from(value);
            Ok(HandlerResult::NewState(state))
        } else {
            Err(OnlyOwnerCanEvolve)
        },
        None => Err(EvolveNotAllowed),
    }
}
