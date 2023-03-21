//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract WillThrow {
    error NotAllowedError(string);
    function aFunction() public pure {
        //require(false, "Error message");
        //assert(false);
        revert NotAllowedError("You are not allowed!");
    }
}

contract ErrorHandling {
    event ErrorLogging(string reason);
    event ErrorLogCode(uint code);
    event ErrorLogBytes(bytes lowLevelData);
    function catchError() public {
        WillThrow will = new WillThrow();
        try will.aFunction() {
            //here we could do something if it works
        } catch Error(string memory reason) {
            // catch error for require
            emit ErrorLogging(reason);
        } catch Panic( uint errorCode) {
            //catch panic for assert
            emit ErrorLogCode(errorCode);
        } catch(bytes memory lowLevelData) {
            // for everything else eg custom errors
            emit ErrorLogBytes(lowLevelData);
        }
    }
}
