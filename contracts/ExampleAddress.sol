//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract ExampleAddress {

    address public someAddress;

    function setSomeAddress(address _someAddress) public {
        someAddress = _someAddress;
    }

    function getAddressBalance() public view returns(uint) {
        return someAddress.balance;
    }

    // 1 ETH = 10^18 WEI
    // https://ethereum-blockchain-developer.com/2022-02-solidity-basics-blockchain-messenger/05-ethereum-addresses/
}
