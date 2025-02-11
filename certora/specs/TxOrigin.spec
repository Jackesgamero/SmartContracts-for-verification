persistent ghost bool txOrigin_used;

hook ORIGIN address v {
	txOrigin_used = true;
}

rule no_TxOrigin_used{
	env e;
	txOrigin_used = false;
	txOriginCheck(e);
	assert !txOrigin_used, "TxOrigin vulnerability exists";
}
