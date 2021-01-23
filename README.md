# k8s-node-mysql-sample

## 動作確認用コマンド
$ curl localhost:8080
$ curl localhost:8080/api/fairies
$ curl -X POST -H "Content-Type: application/json" -d '{"name":"パピィ", "instrument":"鈴", "sweets":"キャンディ"}' localhost:8080/api/fairies

## MySQLの接続方法

```
$ kubectl exec -it node-sample-db-xxxxxxxxxxxxxxx /bin/sh

# mysql -u root -p

mysql> USE mirumo-db
mysql> SELECT * FROM fairy;
```
