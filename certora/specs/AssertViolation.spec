methods {
	function addPoints(uint) external envfree;
}

rule pointsGreaterThanAmount {
	uint amount;
	addPoints(amount);
	assert currentContract.points < amount;
}



