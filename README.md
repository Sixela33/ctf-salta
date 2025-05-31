# 🏆 CTF: El Gran Concurso de Salta

¡Bienvenido al Gran Concurso de la ciudad de Salta! 🎉

La municipalidad de Salta ha lanzado una iniciativa revolucionaria para promover el turismo y la adopción de blockchain en la región. Han creado el **SaltaCoin (SC)**, una moneda digital que representa el espíritu emprendedor de la ciudad, y están ofreciendo **PremioTokens (PT)** como NFTs exclusivos para los primeros ciudadanos digitales que participen en su ecosistema.

### 🎯 La Misión

Tu objetivo es simple pero desafiante: **obtener un PremioToken NFT**. 

### 🪙 Las Reglas del Juego

1. **SaltaCoin (SC)**: La moneda oficial del concurso
   - Representa la prosperidad y el crecimiento económico de Salta
   - Los ciudadanos pueden obtener SaltaCoins para participar en la economía digital local

2. **PremioToken (PT)**: El NFT exclusivo
   - Solo disponible a través de la tienda oficial del concurso
   - Precio fijo: **10 SaltaCoins**
   - Cada persona puede obtener máximo **1 NFT** (para garantizar equidad)
   - Representa tu membresía en el club exclusivo de pioneros digitales de Salta

### 🚀 Tu Desafío

Como un hábil explorador de blockchain, debes encontrar la manera de:
1. Obtener los 10 SaltaCoins necesarios
2. Comprar tu PremioToken NFT
3. Convertirte en uno de los primeros ciudadanos digitales de Salta

### 🏁 Victoria

Habrás completado el CTF cuando logres ser propietario de un PremioToken NFT.

---

## 🛠️ Información Técnica

### Contratos Desplegados
- **SaltaCoin (SC)**: Token ERC20 para compras
- **PremioToken (PT)**: NFT ERC721 exclusivo  
- **NFTSale**: Tienda oficial para comprar NFTs

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
