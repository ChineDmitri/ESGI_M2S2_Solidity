const hre = require("hardhat");

async function main() {
  const FunToken = await hre.ethers.getContractFactory("FunToken");
  const funToken = await FunToken.deploy();

  await funToken.waitForDeployment();

  console.log("FunToken deployed to:", await funToken.getAddress());
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});