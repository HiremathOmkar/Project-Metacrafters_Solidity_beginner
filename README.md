# ETH PROOF Beginners Assessment
It's a solidity program for implementing basic concepts of solidity with the help of tokens and conditional statements.

## Description
This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has a single function that returns the string. This program serves as a simple and straightforward introduction to Solidity programming, and can be used as a stepping stone for more complex projects in the future.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., file.sol). Copy and paste the following code into the file:
```javascript
pragma solidity 0.8.18;
contract MyToken {

    // public variables here
   string public tokenName = "Clock";
   string public tokenAbbrv = "Clk";
   uint public totalSupply = 0;

    // mapping variable here
    mapping(address => uint ) public balance; 

    // mint function
   function mint (address _address, uint _value) public{
      totalSupply += _value;
      balance[_address] += _value;
   }

    // burn function
   function burn(address _address, uint _value) public {
      if(balances[_address] >= _value){
         totalSupply -= _value;
         balance[_address] -= _value;
      }
   }

}
```


To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile HelloWorld.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "HelloWorld" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the sayHello function. Click on the "MyToken" contract in the left-hand sidebar, and then click on the "burn" function to pass the address and give some value. Finally, click on the "transact" button to execute the function and retrieve the tokenAbbreviation, tokenName, and totalSupply.

 Similarly, do some changes with "mint" and "balance" and observe the changes in the value of "totalSupply".
 
 ### Framework Used
Solidity 0.8.18


### MyToken
It is a contract that will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
```javascript
contract MyToken {

    // public variables here
   string public tokenName = "Clock";
   string public tokenAbbrv = "Clk";
   uint public totalSupply = 0; )
```

### mapping
It is a variable for mapping addresses to balances (address => uint)
```javascript
mapping(address => uint ) public balance;
```

### mint
It's a function that takes two parameters: an address and a value. 
The function then increases the total supply by that number and improves the balance of the “sender” address by that amount
```javascript
function mint (address _address, uint _value) public{
      totalSupply += _value;
      balance[_address] += _value;
}
```

### burn
It's a function that works the opposite of the mint function, it will work on condition to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
It will take an address and value just like the mint functions. It will then deduct the value from the total supply and from the balance of the “sender”.
```javascript
function burn(address _address, uint _value) public {
      if(balances[_address] >= _value){
         totalSupply -= _value;
         balance[_address] -= _value;
      }
   }
```
## License
This project is licensed under the MIT License - see the LICENSE.md file for details
