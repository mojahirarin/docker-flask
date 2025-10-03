# Python 3.11のイメージを使用
FROM python:3.11-slim

# 作業ディレクトリを設定
WORKDIR /app

# Poetryのインストール
RUN pip install --no-cache-dir poetry

# Poetry設定: 仮想環境を作成しない
RUN poetry config virtualenvs.create false

# 依存関係ファイルをコピー
COPY pyproject.toml poetry.lock* ./

# 依存関係のインストール（開発依存関係は除外）
RUN poetry install --only main --no-interaction --no-ansi --no-root

# アプリケーションコードをコピー
COPY . .

# ポート8000を公開
EXPOSE 8000

# Flaskアプリケーションを起動
CMD ["python", "app.py"]
