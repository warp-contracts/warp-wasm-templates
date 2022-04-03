use crate::error::ContractError::{CallerBalanceNotEnough, TransferAmountMustBeHigherThanZero};
use crate::state::State;
use crate::action::ActionResult;
use crate::contract_utils::handler_result::HandlerResult;
use crate::contract_utils::js_imports::{log, SmartWeave, Transaction};

pub fn transfer(mut state: State, qty: u64, target: String) -> ActionResult {
    log(("caller ".to_owned() + &SmartWeave::caller()).as_str());
    log(("Transaction owner ".to_owned() + &Transaction::owner()).as_str());

    if qty == 0 {
        return Err(TransferAmountMustBeHigherThanZero);
    }

    let caller = Transaction::owner();
    let balances = &mut state.balances;

    // Checking if caller has enough funds
    let caller_balance = *balances.get(&caller).unwrap_or(&0);
    if caller_balance < qty {
        return Err(CallerBalanceNotEnough(caller_balance));
    }

    // Update caller balance
    balances.insert(caller, caller_balance - qty);

    // Update target balance
    let target_balance = *balances.get(&target).unwrap_or(&0);
    balances.insert(target, target_balance + qty);

    Ok(HandlerResult::NewState(state))
}
