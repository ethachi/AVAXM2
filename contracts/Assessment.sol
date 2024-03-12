// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

//import "hardhat/console.sol";

contract Assessment {
    
    uint256 public balance;

   

    constructor(uint initBalance) payable {
        
        balance = initBalance;
    }

    function getBalance() public view returns(uint256){
        return balance;
    }

    function prime_square(uint256 n) public payable {
        for (uint256 i = 2; i * i <= n; i++) {
            if (n % i != 0) {
                balance=n*n ;
            }
        }
    }


    function composite_cube(uint256 n) public {
       for (uint256 i = 2; i * i <= n; i++) {
            if (n % i == 0) {
                balance=n*n*n ;
            }
        }
    }
}
