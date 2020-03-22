# Kawaii image

Kawaii imageは[kawaii-term](https://github.com/GINK03/kawaii-term)にちなんで、可愛いターミナルが起動できるDocker imageです、`v`コマンドを打つと僕の推しのVtuberの誰かのアスキーアートが表示されます。

癒されたとき、また特段イメージの指定はないけどコンテナを起動したいときにご利用くださいませ。

### Setup

```sh
$ docker build -t kawaii-image .
$ docker run --rm -it kawaii-image
```

### Example

コンテナ自体は汎用的に使えるようにしてます。

![gif](https://raw.github.com/wiki/DevWatanabeJunna/kawaii-image/media/demo.gif)