const {ethers} = require("hardhat")


async function main(){
  const whiteListContract = await ethers.getContractFactory("Whitelist");
  const deployed = await whiteListContract.deploy(10);
  await deployed.deployed();
  console.log("deploooyed",deployed.address);

}

main().then(()=>process.exit(0)).catch((error)=>{
  console.log(error);
  process.exit(1);
})