use warp_pst::action::{ActionResult, HandlerResult, Transfer};
use warp_pst::error::ContractError;
use warp_pst::state::{State};
use warp_wasm_utils::contract_utils::js_imports::{log, SmartWeave, Transaction};

use super::{Actionable};

impl Actionable for Transfer {
     fn action(self, caller: String, mut state: State) -> ActionResult {
        log(("caller ".to_owned() + &SmartWeave::caller()).as_str());
        log(("Transaction owner ".to_owned() + &Transaction::owner()).as_str());
    
        if self.qty == 0 {
            return Err(ContractError::TransferAmountMustBeHigherThanZero);
        }
    
        let caller = Transaction::owner();
        let balances = &mut state.balances;
    
        // Checking if caller has enough funds
        let caller_balance = *balances.get(&caller).unwrap_or(&0);
        if caller_balance < self.qty {
            return Err(ContractError::CallerBalanceNotEnough(caller_balance));
        }
    
        // Update caller balance
        balances.insert(caller, caller_balance - self.qty);
    
        // Update target balance
        let target_balance = *balances.get(&self.target).unwrap_or(&0);
        balances.insert(self.target, target_balance + self.qty);
    
        Ok(HandlerResult::Write(state))
    }
    
}
