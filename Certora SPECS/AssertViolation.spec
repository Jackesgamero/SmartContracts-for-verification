methods {
	function addPoints(uint) external envfree;
	function getPoints() external returns(uint) envfree;
}

rule pointsGreaterThanAmount {
	uint amount;
	addPoints(amount);
	assert getPoints() < amount;
}



