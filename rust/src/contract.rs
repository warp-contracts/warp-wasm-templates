use crate::action::{Action, ActionResult};
use crate::actions::balance::balance;
use crate::actions::evolve::evolve;
use crate::actions::foreign_read::{foreign_read};
use crate::actions::foreign_write::foreign_write;
use crate::actions::transfer::transfer;
use crate::contract_utils::js_imports::{Block, Contract, log, SmartWeave, Transaction};
use crate::state::State;

pub async fn handle(current_state: State, action: Action) -> ActionResult {

    //Example of accessing functions imported from js:
    log("log from contract");
    log(&("Transaction::id()".to_owned() + &Transaction::id()));
    log(&("Transaction::owner()".to_owned() + &Transaction::owner()));
    log(&("Transaction::target()".to_owned() + &Transaction::target()));

    log(&("Block::height()".to_owned() + &Block::height().to_string()));
    log(&("Block::indep_hash()".to_owned() + &Block::indep_hash()));
    log(&("Block::timestamp()".to_owned() + &Block::timestamp().to_string()));

    log(&("Contract::id()".to_owned() + &Contract::id()));
    log(&("Contract::owner()".to_owned() + &Contract::owner()));

    log(&("SmartWeave::caller()".to_owned() + &SmartWeave::caller()));

    match action {
        Action::Transfer { qty, target } => transfer(current_state, qty, target),
        Action::Balance { target } => balance(current_state, target),
        Action::Evolve { value } => evolve(current_state, value),
        Action::ForeignRead { contract_tx_id } => foreign_read(current_state, contract_tx_id).await,
        Action::ForeignWrite { contract_tx_id, qty, target } => foreign_write(current_state, contract_tx_id, qty, target).await,
    }
}
