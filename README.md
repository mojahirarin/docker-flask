# Flask API Server with Poetry

Poetryで管理されたシンプルなFlask APIサーバーです。

## 必要な環境

- Docker

## ビルドと起動方法

### 1. Dockerイメージのビルド

```bash
docker build -t flask-api-server .
```

### 2. コンテナの起動

```bash
docker run -d -p 5000:5000 --name flask-api flask-api-server
```

### 3. APIの動作確認

```bash
# ヘルスチェック
curl http://localhost:5000/health

# メインエンドポイント
curl http://localhost:5000/

# API情報
curl http://localhost:5000/api/info
```

## 利用可能なエンドポイント

- `GET /` - Hello Worldメッセージを返します
- `GET /health` - ヘルスチェック用エンドポイント
- `GET /api/info` - API情報を返します

## コンテナの停止・削除

```bash
# コンテナの停止
docker stop flask-api

# コンテナの削除
docker rm flask-api
```

## ローカル開発

```bash
# 依存関係のインストール
poetry install

# サーバーの起動
poetry run python app.py
```
