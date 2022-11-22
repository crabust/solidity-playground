// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// Contract based on code generated by OpenZeppelin Wizard
// https://docs.openzeppelin.com/contracts/4.x/wizard

import "openzeppelin-contracts-upgradeable/proxy/utils/Initializable.sol";
import "openzeppelin-contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "openzeppelin-contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "openzeppelin-contracts-upgradeable/access/OwnableUpgradeable.sol";

contract SimpleToken is Initializable, ERC20Upgradeable, OwnableUpgradeable, UUPSUpgradeable {

    function initialize() initializer public {
        __ERC20_init("SimpleToken", "STK");
        __Ownable_init();
        __UUPSUpgradeable_init();
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    ///@dev Only owner can call upgrade
    function _authorizeUpgrade(address newImplementation)
        internal
        onlyOwner
        override
    {}


}