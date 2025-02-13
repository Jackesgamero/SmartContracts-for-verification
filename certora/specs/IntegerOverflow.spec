methods {
	function increment() external envfree;
}


rule noOverflowOnIncrement() {
    uint8 initValue = currentContract.value;
    increment();
    uint8 finalValue = currentContract.value;
    
    assert initValue < finalValue;
}

