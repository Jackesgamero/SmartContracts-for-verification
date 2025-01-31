methods {
	function increment() external envfree;
	function getValue() external returns(uint8) envfree;
}


rule noOverflowOnIncrement() {
    uint8 initValue = getValue();
    increment();
    uint8 finalValue = getValue();
    
    assert initValue < finalValue;
}

