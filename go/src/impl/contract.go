package impl

import (
	"errors"
	"github.com/redstone-finance/redstone-contracts-wasm/go/src/common_types"
	"github.com/redstone-finance/redstone-contracts-wasm/go/src/types"
)

type PstContract struct {
	state types.PstState
}

// Handle the function that contract developers actually need to implement
func (c *PstContract) Handle(action common_types.Action, actionBytes []byte) (interface{}, common_types.ActionResult, error) {
	fn := action.Function

	// this is how you can access functions imported from js
	/*
		console.Log("Block height", block.Height())
		console.Log("Block indep_hash", block.IndepHash())
		console.Log("Block timestamp", block.Timestamp())

		console.Log("Transaction id", transaction.Id())
		console.Log("Transaction owner", transaction.Owner())
		console.Log("Transaction target", transaction.Target())

		console.Log("Contract id", contract.Id())
		console.Log("Contract owner", contract.Owner())
	*/

	clonedState := c.CloneState().(types.PstState)

	switch fn {
	case "transfer":
		var transfer types.TransferAction
		err := transfer.UnmarshalJSON(actionBytes)
		if err != nil {
			return nil, nil, err
		}
		state, err := Transfer(clonedState, transfer)
		return state, nil, err
	case "evolve":
		var evolve types.EvolveAction
		err := evolve.UnmarshalJSON(actionBytes)
		if err != nil {
			return nil, nil, err
		}
		state, err := Evolve(clonedState, evolve)
		return state, nil, err
	case "balance":
		var balance types.BalanceAction
		err := balance.UnmarshalJSON(actionBytes)
		if err != nil {
			return nil, nil, err
		}
		result, err := Balance(clonedState, balance)
		return nil, result, err
	case "foreignCall":
		var foreignCall types.ForeignCallAction
		err := foreignCall.UnmarshalJSON(actionBytes)
		if err != nil {
			return nil, nil, err
		}
		state, err := ForeignCall(clonedState, foreignCall)
		return state, nil, err
	default:
		return nil, nil, errors.New("[RE:WTF] unknown function: " + fn)
	}
}

func (c *PstContract) InitState(stateJson string) {
	var state types.PstState
	err := state.UnmarshalJSON([]byte(stateJson))
	if err != nil {
		return // TODO: throw in a similar way as in handle
	}
	c.UpdateState(&state)
}

func (c *PstContract) UpdateState(newState interface{}) {
	// note: we're first type asserting here to the pointer to types.PstState
	// - and then retrieving value from the pointer
	c.state = *(newState.(*types.PstState))
}

func (c *PstContract) CurrentState() interface{} {
	return c.state
}

func (c *PstContract) CloneState() interface{} {
	json, _ := c.state.MarshalJSON()
	state := types.PstState{}
	err := state.UnmarshalJSON(json)
	if err != nil {
		// TODO: return error
		return types.PstState{}
	}

	return state
}
