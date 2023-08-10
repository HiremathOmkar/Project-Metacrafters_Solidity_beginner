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

contract MyToken {
    // Your contract will have public variables that store the details about your coin 
    // public variables here
    string public  tokenName="Clock";
    string public tokenAbb="Clk";
    //uint is used as it can never be neg-ve;
    uint public totalSupply=0;


    // mapping address here to uint naming it balance
    // this will return the token amount that address contains 
    mapping(address=>uint)public balance;

    
   // mint function is created to take two parameters address and its value
function mint(address _address,uint _value) private{
   totalSupply +=_value;
   balance[_address]+=_value;
}
    // burn function act opposite to mint fuction use d for deducting the value/balance
 function burn (address _address,uint _value) private {
if(balance[_address] >=_value){
   totalSupply -=_value;
   balance[_address]-=_value;

}
}
}
