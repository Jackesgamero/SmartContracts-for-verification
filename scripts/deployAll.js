const { ethers } = require("hardhat");

async function main() {
    const contracts = [
        "AssertViolation",
        "IntegerOverflow",
        "Reentrancy",
        "RequirementViolation",
        "RightToLeftOverride",
        //"ShadowedStateVar",
        "Timestamp",
        "TransactionOrderDependence",
        "TxOrigin",
        "UncheckedCallReturn",
        //"UninitializedStorage",
        "UnprotectedEtherW",
        "UnrestrictedDelegateCall",
        "UnrestrictedSelfDestruct",
        "UnrestrictedWrite",
    ];

    for (const contractName of contracts) {
        console.log(`Deploying ${contractName}...`);
        const ContractFactory = await ethers.getContractFactory(contractName);
        const contractInstance = await ContractFactory.deploy();

        await contractInstance.waitForDeployment();
        console.log(`${contractName} deployed at: ${contractInstance.getAddress()}`);
    }

    console.log("All contracts deployed successfully!");
}

main();