// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@zama-ai/fhevm/contracts/FHE.sol";

contract HelloFHEVM {
    euint32 private encryptedValue;

    function setEncrypted(bytes calldata encryptedInput) public {
        encryptedValue = FHE.asEuint32(encryptedInput);
    }

    function getEncrypted() public view returns (bytes memory) {
        return FHE.sealoutput(encryptedValue);
    }
}
