pragma solidity ^0.5.0;

contract Adoption {
    address[16] public adopters;

    // Adopting a pet
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15, "Id out of range.");

        adopters[petId] = msg.sender;

        return petId;
    }
}