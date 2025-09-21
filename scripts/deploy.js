const { ethers } = require("hardhat");

async function main() {
  const HelloFHEVM = await ethers.getContractFactory("HelloFHEVM");
  const hello = await HelloFHEVM.deploy();
  await hello.waitForDeployment();
  console.log("HelloFHEVM deployed to:", await hello.getAddress());
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
