persistent ghost bool timestamp_used;

hook TIMESTAMP uint v {
	timestamp_used = true;
}

rule no_timestamp_usage{
	env e; 
	timestamp_used = false;
	generateLotteryWinner(e);
	assert !timestamp_used, "Timestamp vulnerability exists";	
}

