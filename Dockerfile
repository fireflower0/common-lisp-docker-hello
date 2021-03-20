# ベースイメージとして alpine-glibc を使用する
FROM frolvlad/alpine-glibc:alpine-3.12

# 以降の RUN, CMD コマンドで使われる作業ディレクトリを指定する
WORKDIR /app

# カレントディレクトリにある資産をコンテナ上の ｢/app｣ ディレクトリにコピーする
ADD . /app

# Roswellのインストール
RUN apk add --no-cache git automake autoconf make gcc build-base curl-dev curl glib-dev && \
    git clone -b release https://github.com/roswell/roswell.git && \
    cd roswell && \
    sh bootstrap && \
    ./configure --disable-manual-install && \
    make && \
    make install && \
    cd .. && \
    rm -rf roswell && \
    ros setup -q

# Clack をインストールする
RUN ros install clack

# .roswellにPATHを通す
ENV PATH $PATH:/root/.roswell/bin

# Docker に対して｢ 8080 番ポート ｣で待受けするよう指定する
EXPOSE 8080

# コンテナが起動したときに実行される命令を指定する
CMD ["ros", "run", "--", "--load", "app.lisp"]
