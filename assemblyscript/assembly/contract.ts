// common imports - do not remove (even if IDE reports as non-used)!

import {parse, stringify} from "@serial-as/json";
import {console} from "./imports/console";
import {Block} from "./imports/smartweave/block";
import {Transaction} from "./imports/smartweave/transaction";
import {Contract} from "./imports/smartweave/contract";
import {ActionSchema, HandlerResultSchema, ResultSchema, StateSchema} from "./schemas";
import {balance} from "./actions/balance";
import {transfer} from "./actions/transfer";
import {evolve} from "./actions/evolve";

type ContractFn = (state: StateSchema, action: ActionSchema) => HandlerResultSchema;

const functions: Map<string, ContractFn> = new Map();
// note: inline "array" map initializer does not work in AS.
functions.set("balance", balance);
functions.set("transfer", transfer);
functions.set("evolve", evolve);
let contractState: StateSchema;

@contract
function handle(state: StateSchema, action: ActionSchema): ResultSchema | null {
  console.log(`Function called: "${action.function}"`);

  // this is how you can access functions imported from js
  /*
  Block.height();
  Block.indep_hash();
  Block.timestamp();

  Transaction.id();
  Transaction.owner();
  Transaction.target();

  Contract.id();
  Contract.owner();
  */

  const fn = action.function;
  if (functions.has(fn)) {
    const handlerResult = functions.get(fn)(state, action);
    if (handlerResult.state != null) {
      console.logO('Setting new state', stringify(handlerResult.state))
      contractState = handlerResult.state!!;
    }
    return handlerResult.result;
  } else {
    throw new Error(`[CE:WTF] Unknown function ${action.function}`);
  }
}