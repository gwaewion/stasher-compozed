cd /root/go/src
rm -fr stasher
git clone https://github.com/gwaewion/stasher.git stasher
cd stasher
git checkout dev
/root/go/bin/packr2
go build
cp /root/config.yml /root/go/src/stasher/
/root/go/src/stasher/stasher -c /root/go/src/stasher/config.yml