use crate::action::{Action, ActionResult};
use crate::actions::balance::balance;
use crate::actions::evolve::evolve;
use crate::actions::foreign_call::foreign_call;
use crate::actions::transfer::transfer;
use crate::state::State;

pub async fn handle(current_state: State, action: Action) -> ActionResult {
    match action {
        Action::Transfer { qty, target } => transfer(current_state, qty, target),
        Action::Balance { target } => balance(current_state, target),
        Action::Evolve { value } => evolve(current_state, value),
        Action::ForeignCall { contract_tx_id } => foreign_call(current_state, contract_tx_id).await,
    }
}
