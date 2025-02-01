rule frontRunningDetection {
    uint256 price_before;
    uint256 price_after;
    uint256 msg_value_before;

    price_before = currentContract.price;
    
    // Execute the buy function with msg.value
    env e;
    msg_value_before = e.msg.value;
    buy@withrevert(e);  

    // Price value after executing the transaction
    price_after = currentContract.price;

    satisfy price_after >= price_before, "Price should not be updated by a lower value transaction";

    assert price_after == msg_value_before, "Front-running vulnerability detected: attacker can manipulate contract state with higher gas fees";
}