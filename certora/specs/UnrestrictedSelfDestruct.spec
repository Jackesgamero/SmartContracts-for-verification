methods {
	function getOwner() external returns(address) envfree;
}

persistent ghost bool reverted;


rule onlyOwnerCanCallDestroy {
    address caller;
    env e;

    destroy@withrevert(e,caller);
    reverted = lastReverted;

    
    assert (caller == currentContract.owner || caller != currentContract.owner => reverted, 
    "Only the owner can call destroy"
    );
}