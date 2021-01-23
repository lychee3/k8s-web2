# k8s-web2

Web2階層サンプルです。

* フロントエンド(AP)：Node.js
* バックエンド(DB)：MySQL

![外観](./docs/images/overview.png)

## デプロイ方法
### Dockerイメージ作成
```
$ make build
```
### Pod生成
```
$ make deploy
```
## PodとDockerイメージの削除方法
```
$ make clean
```

## 動作確認用コマンド

```
$ curl localhost:8080
$ curl localhost:8080/api/fairies
$ curl -X POST -H "Content-Type: application/json" -d '{"name":"パピィ", "instrument":"鈴", "sweets":"キャンディ"}' localhost:8080/api/fairies
```

## MySQLの接続方法

```
$ kubectl exec -it node-sample-db-xxxxxxxxxxxxxxx /bin/sh

# mysql -u root -p

mysql> USE mirumo-db
mysql> SELECT * FROM fairy;
```
