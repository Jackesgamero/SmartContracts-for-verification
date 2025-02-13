persistent ghost bool reverted;


rule onlyOwnerCanWithdraw {
    address caller;
    env e;

    withdrawAll@withrevert(e,caller);
    reverted = lastReverted;

    assert (caller == currentContract.owner || caller != currentContract.owner => reverted, 
    "Only the owner can call withdrawAll"
    );
}