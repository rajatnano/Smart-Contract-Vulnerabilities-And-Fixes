/*
 * @source: https://github.com/sigp/solidity-security-blog#visibility
 * @author: SigmaPrime
 * Modified by Gerhard Wagner
 * Further comments added by rajatnano
 */

pragma solidity ^0.4.24;

contract HashForEther {

    /*this function however public by default uses the best practice of specifiying its visibility type;
    since its a publicly accessible function, the visibility is set to public*/    
    function withdrawWinnings() public {
        // Winner if the last 8 hex characters of the address are 0.
        require(uint32(msg.sender) == 0);
        _sendWinnings();
     }
     
     /*this function is specified as INTERNAL function;
     i.e. he function can only be called within the contract itself and using 'this' for any derived contracts.
     Similar to how PROTECTED behaves in OOPs programming languages like C/C++*/
     function _sendWinnings() internal{
         msg.sender.transfer(this.balance);
     }
     
     
}
