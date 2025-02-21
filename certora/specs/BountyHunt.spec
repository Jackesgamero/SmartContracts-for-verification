//Based on: https://github.com/Certora/Examples/blob/master/CVLByExample/Reentrancy/certora/spec/Reentrancy.spec

//Ghosts are a way of defining additional variables for use during verification, "persistent" keyword is used to mantain the state beetween multiple calls during the same execution.


//For tracking if external call was produced
persistent ghost bool called_extcall; 
//For tracking if execution reverted
persistent ghost bool g_reverted;


//Hooks are used to attach CVL code to certain low-level operations
hook CALL(uint g, address addr, uint value, uint argsOffset, uint argsLength, uint retOffset, uint retLength) uint rc {
	called_extcall = true;
	env e;
	bool cond;

	//Execute withdraw() on a simulated env e capturing if the execution reverted
	claimBounty@withrevert(e);
	//lastReverted indicate whether the most recent contract function reverted 
	g_reverted = lastReverted;
}

rule no_reentrancy() {
	require !called_extcall;
	require !g_reverted;
	env e; calldataarg args;
	
	claimBounty@withrevert(e,args);
	
	//Check that if there was an external call the function reverts
	assert called_extcall => g_reverted, "Reentrancy weakness exists";
}
