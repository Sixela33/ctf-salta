// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.27;

import {NFT} from "./NFT.sol";
import {Token} from "./Token.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";


contract NFTSale is Ownable {
    uint256 NFTPrice = 10 ether; // 1 * 10 ** 18
    address nftContractAddress;
    address purchaseTokenAddress;

    constructor(
        address _nftContractAddress,
        address _purchaseTokenAddress    
    ) Ownable(msg.sender) {
        nftContractAddress = _nftContractAddress;
        purchaseTokenAddress = _purchaseTokenAddress;
    }

    function comprarNFT () public {
        Token payment_token = Token(purchaseTokenAddress);
        NFT nftContract = NFT(nftContractAddress);

        require(payment_token.transferFrom(msg.sender, address(this), NFTPrice));
        require(nftContract.balanceOf(msg.sender) == 0);

        nftContract.safeMint(msg.sender);
    }

}