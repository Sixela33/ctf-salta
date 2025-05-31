// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.29;

import {Script, console} from "forge-std/Script.sol";
import {NFT} from "../src/NFT.sol";

contract CheckNFTOwners is Script {
    
    function run() public view {
        // Dirección del contrato NFT desplegado
        address nftContract = 0xA728C2931370caE584d6Ca7fd2d8e5D434Ae0959;
        
        uint256 max_check = 1000;
        
        checkOwners(nftContract, max_check);
    }
    
    function checkOwners(address nftContract, uint256 max_check) public view {
        NFT nft = NFT(nftContract);
        
        for (uint256 i = 0; i < max_check; i++) {
            uint256 tokenId = i;
            
            try nft.ownerOf(tokenId) returns (address owner) {
                console.log("Token ID:", tokenId, "Propietario:", owner);
            } catch {
                console.log("Token ID:", tokenId, "ERROR: No existe o no ha sido minteado");
                console.log("---");
                break;
            }
        }
        
        console.log("=== FIN ===");
    }
} 