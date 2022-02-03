/*
 * @source: https://github.com/sigp/solidity-security-blog#visibility
 * @author: SigmaPrime 
 * Modified by Gerhard Wagner
 * Further comments added by rajatnano
 */
 
pragma solidity ^0.4.24;

contract HashForEther {


    //NO VISIBILITY SET -> 1. FUNCTIONS ARE PUBLIC BY DEFAULT
    function withdrawWinnings() {
        // Winner if the last 8 hex characters of the address are 0. 
        require(uint32(msg.sender) == 0);
        _sendWinnings();
     }

     //NO VISIBILITY SET -> 2. ANYONE CAN ACCESS THE FUNCTION MAKING IT VULNERABLE TO THEFT/ATTACK
     function _sendWinnings() {
         msg.sender.transfer(this.balance);
     }
}
