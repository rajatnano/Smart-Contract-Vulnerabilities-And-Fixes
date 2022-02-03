# Smart-Contract-Vulnerabilities-And-Fixes
Examples of smart contract vulnerabilities and fixes

1. Function Default Visibility

Smart Contracts Weakness Classification ID - SWC100

The Vulnerability:

The default visibility for functions is public. Therefore functions that do not specify any visibility will be callable by external users. The issue comes when developers mistakenly ignore visibility specifiers on functions which should be private (or only callable within the contract itself).

Preventative Techniques:

It is good practice to always specify the visibility of all functions in a contract, even if they are intentionally public. Recent versions of Solidity will now show warnings during compilation for functions that have no explicit visibility set, to help encourage this practice.

SWC100 - https://swcregistry.io/docs/SWC-100

Solidity Docs on Visibility - https://docs.soliditylang.org/en/v0.8.11/contracts.html#visibility-and-getters

In depth reading - https://github.com/sigp/solidity-security-blog#visibility

Real World Example (First Parity MultiSig Wallet Hack) - https://github.com/sigp/solidity-security-blog#real-world-example-parity-multisig-wallet-first-hack

---

