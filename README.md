# c_on_docker
C言語を実行するための環境

## 動作環境
WSL, Linux
(id, gidが1000の時と想定しています。違う場合はDockerfileを編集してください。)

## 起動方法
```
docker compose up -d
docker compose exec c_land bash
```

## 終了方法
```
docker compose down
```
or
```
docker compose stop
```

## ディレクトリの説明
sandbox以下はすべてGit管理されません。

## 使い方
```
docker compose exec c_land bash
cd sandbox
touch hello.c
nano hello.c # 好きなエディタで編集してください
gcc hello.c -o hello
./hello
exit
docker compose stop
```
