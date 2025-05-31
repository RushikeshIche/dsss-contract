# 🔐 SecretVault — Decentralized Secret Sharing System (DSSS)

SecretVault is a smart contract built with Solidity that enables secure, decentralized storage and controlled sharing of encrypted secrets on the Ethereum blockchain.

---

## 🚀 Features

- Store secrets in encrypted form on-chain
- Share access with specific Ethereum addresses
- Only authorized users can retrieve the stored secrets
- Uses `bytes32` secret identifiers (hashes)
- Compatible with frontends and off-chain encryption/decryption tools

---

## 🛠 How It Works

1. **Encrypt Data Off-Chain**: Secrets are encrypted off-chain using AES or any secure encryption method.
2. **Store On-Chain**: The encrypted secret is stored on-chain along with a unique identifier.
3. **Share Access**: The owner can share access to individual secrets with other wallet addresses.
4. **Retrieve and Decrypt**: Authorized users can fetch encrypted secrets and decrypt them locally.

---

## 💡 Use Cases

- Decentralized password managers
- Secure message storage
- Confidential document references
- Private data access between DAO members

---

## 🧠 Technologies Used

- Solidity (Smart contract development)
- Ethereum (EVM-compatible chains)
- MetaMask / Remix (Testing & interaction)
- AES/RSA (Client-side encryption/decryption)
- IPFS (optional for large file storage)

---

## 📝 Prerequisites

- MetaMask wallet or equivalent
- Remix IDE or Hardhat development environment
- Basic understanding of Ethereum transactions
- JavaScript/Node.js for off-chain encryption tools

---

## 🔐 Security Considerations

- All encryption and decryption must happen off-chain
- Do not store plain-text secrets on-chain
- Use secure, strong cryptographic keys
- Always hash secret identifiers before storing

---

## 📂 Project Structure Suggestion

- `contracts/` — Contains the smart contract
- `scripts/` — Optional deployment or testing scripts
- `frontend/` — Web app for user interaction
- `README.md` — Project overview and usage

---

## 📌 Future Enhancements

- Time-limited access to secrets
- Secret expiration or auto-revoke
- UI with file encryption, sharing, and retrieval
- IPFS-based file integration for large payloads

---

## 🛡 License

This project is licensed under the MIT License.

---

## 🤝 Contributing

Feel free to fork, submit issues or PRs to improve this project. Contributions for frontend, encryption integrations, or UX improvements are welcome!

