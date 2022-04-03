use crate::action::{Action, ActionResult};
use crate::actions::balance::balance;
use crate::actions::evolve::evolve;
use crate::actions::foreign_read::{foreign_read};
use crate::actions::foreign_write::foreign_write;
use crate::actions::transfer::transfer;
use crate::state::State;

pub async fn handle(current_state: State, action: Action) -> ActionResult {
    /*
    Example of accessing functions imported from js:

    log("log from contract");
    Transaction::id();
    Transaction::owner();
    Transaction::target();

    Contract::id();
    Contract::owner();

    Block::height();
    Block::indep_hash();
    Block::timestamp();

    SmartWeave:caller();
    */
    match action {
        Action::Transfer { qty, target } => transfer(current_state, qty, target),
        Action::Balance { target } => balance(current_state, target),
        Action::Evolve { value } => evolve(current_state, value),
        Action::ForeignRead { contract_tx_id } => foreign_read(current_state, contract_tx_id).await,
        Action::ForeignWrite { contract_tx_id, qty, target } => foreign_write(current_state, contract_tx_id, qty, target).await,
    }
}
