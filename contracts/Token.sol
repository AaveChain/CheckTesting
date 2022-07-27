// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;


contract Token{
    string public name ="Avineesh Token";
    string public symbol ="AVT";
    uint public totalSupply= 1000;

    address public owner;

    mapping(address=>uint) balances;

    constructor(){
        balances[msg.sender]=totalSupply;
        owner=msg.sender;
    }
    function transfer(address to, uint amount) external{
        require(balances[msg.sender]>=amount,"Not more tokens");
        balances[msg.sender]-=amount;
        balances[to]+=amount;
    }
    function balanceOf(address account) external view returns(uint){
        return balances[account];

    }


}