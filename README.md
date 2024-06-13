# ETH-BEGINNER-ASSESMENT
KishanToken Contract
This project is a simple token contract, build in Solidity programming language which allows to mint and burn tokens, tracking total supply and maintaining balances. This program will be a good point to start with, to those who are unfamiliar with solidity.

Description
The KishanToken contract is designed to handle basic operations like minting and burning of tokens. It has a feature that allow you to alter the overall token supply and update balances accordingly. This contract can be used to create unique tokens in blockchain.

Getting Started
Installing
To run this program, you must have the Solidity compiler installed in your system. Or you can use Remix, an online Solidity IDE. Remix website:- https://remix.ethereum.org/.

Executing program
On reaching Remix website, you have to create a new file by "+" sign in the left-hand sidebar and save the file with .sol extension. Now, copy and paste the code into file:

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract KishanToken {
    // public variables here

    string public nameOfToken = "KISHAN";
    string public symbolOfToken = "KK";
    uint256 public totalSupply = 0;

    // mapping variable here
    mapping(address => uint256) public balances;

    // mint function
    function mint(address _mint, uint256 _value) public {
        totalSupply += _value;
        balances[_mint] += _value;
    }

    // burn function
    function burn(address _burn, uint256 _value) public {
        if (balances[_burn] >= _value) {
            totalSupply -= _value;
            balances[_burn] -= _value;
        }
    }
}
To compile the code, you have to click on the "Solidity Compiler" tab in the left-hand sidebar. Before clicking on compile button, check if the compiler version is set to same as pragma in the code and then click on "Compile KishanToken.sol" icon.

When the code will compile, you will have to deploy the contract by clicking on "Deploy & Run Transactions" tab in the left-hand sidebar.

Select the "KishanToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it. By clicking on "nameOfToken", you can retrieve "KISHAN" string. By clicking on "symbolOfToken", you can retrieve "KK" string.

Click on mint dropdown icon and fill address and value, and click on transact icon. Once clicked, click on "totalSupply" to print the minted tokens.

Now, click on burn dropdown icon and fill address and value, and click on transact icon. Once clicked, click on "totalSupply" to print the remaining tokens after burning.

Help
For any issues or common problems related to this contract, refer Solidity documentation on internet.

Authors
Kishan Kumar
@kishankumar

License
This project is licensed under the MIT License.
