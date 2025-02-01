methods {
	function isEven(uint256) external returns(bool) envfree;
}

rule requireViolation {
    uint256 x;
    isEven@withrevert(x);
    assert !lastReverted, "Revert should not occur for every x";
}