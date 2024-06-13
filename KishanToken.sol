// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Import SafeMath library to prevent overflow and underflow issues
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract KishanToken {
    using SafeMath for uint256;

    // Public variables
    string public nameOfToken = "KISHAN";
    string public symbolOfToken = "KS";
    uint256 public totalSupply;

    // Mapping of addresses to balances
    mapping(address => uint256) public balances;

    // Event to log minting and burning events
    event Mint(address indexed _to, uint256 _value);
    event Burn(address indexed _from, uint256 _value);

    // Mint function
    function mint(address _to, uint256 _value) public {
        totalSupply = totalSupply.add(_value);
        balances[_to] = balances[_to].add(_value);
        emit Mint(_to, _value);
    }

    // Burn function
    function burn(address _from, uint256 _value) public {
        require(balances[_from] >= _value, "Insufficient balance");
        totalSupply = totalSupply.sub(_value);
        balances[_from] = balances[_from].sub(_value);
        emit Burn(_from, _value);
    }
}
