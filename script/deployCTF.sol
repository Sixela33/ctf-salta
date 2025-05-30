// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.29;

import {Script, console} from "forge-std/Script.sol";
import {NFTSale} from "../src/NFTSale.sol";
import {NFT} from "../src/NFT.sol";
import {Token} from "../src/Token.sol";

contract CounterScript is Script {
    string URI_URL = "";
    
    function run() public {
        vm.startBroadcast();
        
        Token token = new Token();
        NFT nft = new NFT(URI_URL);
        NFTSale sale = new NFTSale(address(nft), address(token));
    
        nft.setMinter(address(sale));
        
        vm.stopBroadcast();
    }
}