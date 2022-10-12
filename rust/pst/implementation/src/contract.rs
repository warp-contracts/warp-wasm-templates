use async_recursion::async_recursion;

use warp_pst::action::{Action, ActionResult};
use warp_pst::state::State;

use crate::actions::{Actionable, *};
use warp_wasm_utils::contract_utils::js_imports::{Block, Contract, log, SmartWeave, Transaction};

#[async_recursion(?Send)]
pub async fn handle(state: State, action: Action) -> ActionResult {
    let original_caller = Transaction::owner();
    let effective_caller = SmartWeave::caller();

    //Example of accessing functions imported from js:
    // log("log from contract");
    // log(&("Transaction::id()".to_owned() + &Transaction::id()));
    // log(&("Transaction::owner()".to_owned() + &Transaction::owner()));
    // log(&("Transaction::target()".to_owned() + &Transaction::target()));

    // log(&("Block::height()".to_owned() + &Block::height().to_string()));
    // log(&("Block::indep_hash()".to_owned() + &Block::indep_hash()));
    // log(&("Block::timestamp()".to_owned() + &Block::timestamp().to_string()));

    // log(&("Contract::id()".to_owned() + &Contract::id()));
    // log(&("Contract::owner()".to_owned() + &Contract::owner()));

    // log(&("SmartWeave::caller()".to_owned() + &SmartWeave::caller()));

    // for vrf-compatible interactions
    /*log(&("Vrf::value()".to_owned() + &Vrf::value()));
    log(&("Vrf::randomInt()".to_owned() + &Vrf::randomInt(7).to_string()));*/

    match action {
        Action::Transfer(action) => action.action(effective_caller, state),
        Action::Balance(action) => action.action(effective_caller, state),
        Action::Evolve(action) => action.action(effective_caller, state),
        Action::ForeignRead(action) => action.action(effective_caller, state).await,
        Action::ForeignWrite(action) => action.action(effective_caller, state).await,
    }
}
