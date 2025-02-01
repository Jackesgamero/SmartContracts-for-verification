methods {
	function getOwner() external returns(address) envfree;
}

persistent ghost bool reverted;


rule onlyOwnerCanWithdraw {
    address caller;
    env e;

    withdrawAll@withrevert(e,caller);
    reverted = lastReverted;

    assert (caller == getOwner() || caller != getOwner() => reverted, 
    "Only the owner can call withdrawAll"
    );
}