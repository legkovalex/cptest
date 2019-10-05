init () {
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    apt-key fingerprint 0EBFCD88
    add-apt-repository \
        "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) \
        stable"
    apt-get update
    apt-get install -y git \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg-agent \
        software-properties-common \
        docker-ce \
        docker-ce-cli \
        containerd.io \
        docker-compose
}

build() {
    docker build -t my_web docker/
}

start() {
    docker-compose up -d
}

check() {
wget -q http://127.0.0.1:80
if [ $? -eq 0 ]; then
    echo "Online"
else
    echo "Offline"
fi

wget -q http://127.0.0.1:81
if [ $? -eq 0 ]; then
    echo "Online"
else
    echo "Offline"
fi
}

init
build
start
check