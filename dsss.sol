// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract SecretVault {
    struct Secret {
        address owner;
        string encryptedData; // e.g., AES-encrypted
        address[] sharedWith;
        uint256 timestamp;
    }

    mapping(bytes32 => Secret) private secrets;

    event SecretStored(bytes32 indexed secretId, address indexed owner);
    event SecretShared(bytes32 indexed secretId, address indexed with);

    function storeSecret(bytes32 secretId, string memory encryptedData) public {
        require(secrets[secretId].owner == address(0), "Secret already exists");

        Secret storage newSecret = secrets[secretId];
        newSecret.owner = msg.sender;
        newSecret.encryptedData=encryptedData;
        newSecret.timestamp=block.timestamp;

        emit SecretStored(secretId, msg.sender);
    }

    function shareSecret(bytes32 secretId, address with) public {
        require(msg.sender == secrets[secretId].owner, "Not the owner");
        secrets[secretId].sharedWith.push(with);
        emit SecretShared(secretId, with);
    }

    function getSecret(bytes32 secretId) public view returns (string memory) {
        require(msg.sender == secrets[secretId].owner || isSharedWith(secretId, msg.sender), "Access denied");
        return secrets[secretId].encryptedData;
    }

    function isSharedWith(bytes32 secretId, address user) private view returns (bool) {
        address[] memory shared = secrets[secretId].sharedWith;
        for (uint i = 0; i < shared.length; i++) {
            if (shared[i] == user) {
                return true;
            }
        }
        return false;
    }
}
