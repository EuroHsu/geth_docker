# Geth for docker

## 需求環境

1. docker
2. docker-compose

## 公鏈

### 說明

1. 初次啟動依機器規格與公鏈當前區塊大小，需同步3~7天不等
2. 節點交換資料的Port為`30303`，開放全域可以加快資料同步速度
3. RPC Port為`30003`，考慮安全性請勿對外開放

### 啟動`Mainnet`節點

```bash
docker-compose up -d mainnet
```

## 測試鏈

### 說明

1. 測試鏈分為`Rinkeby`與`Ropsten`兩種
2. 節點交換資料的Port為`30303`，開放全域可以加快資料同步速度
3. RPC Port為`30003`，考慮安全性請勿對外開放

### 啟動`Rinkeby`節點

```bash
docker-compose up -d rinkeby
```

### 啟動`Ropsten`節點

```bash
docker-compose up -d ropsten
```

## 私鏈

### 說明

1. 此私鏈作為本機測試使用，不提供對外的連線，採用`POA`共識機制
2. 出塊頻率為每`1`秒出`1`個區塊
3. RPC Port為`8545`
4. Websocket Port為`8546`
5. 礦工私鑰: 0xebcf49020376fa525b99c6f74a88edfff77a4d0ee2245ca696f6b929d7e0cd03
6. 礦工地址: 0x75A009A95b8CE36896b7F43599aa25d3d2d20B90

### 初始化`Privnet`節點

```bash
docker-compose run privnet_init
```

### 啟動`Privnet`節點

```bash
docker-compose up -d privnet
```

## 其他指令

### 重啟節點

``` bash
docker-compose restart
```

### 查看Log

```bash
docker-compose logs -f
```

### 關閉節點

```bash
docker-compose down
```
