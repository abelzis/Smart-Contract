const PurchaseStockImage = artifacts.require("PurchaseStockImage");

module.exports = function(deployer, network, accounts) {
  deployer.deploy(PurchaseStockImage, accounts[1]);
};
