rule noUntrustedDelegateCall {
    address trusted_code = 0x1234567890abcdef1234567890abcdef12345678;  // Address of a trusted contract

    env e;
    calldataarg args;
    delegate@withrevert(e, args);
    
    assert currentContract.code == trusted_code, "Delegatecall must be made to a trusted contract";
}