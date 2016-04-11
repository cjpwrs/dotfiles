source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

shopt -s extglob

export DOCKER_HOST=tcp://192.168.99.100:2376
export DOCKER_CERT_PATH=/Users/elnicky/.docker/machine/machines/dinghy
export DOCKER_TLS_VERIFY=1
export DOCKER_MACHINE_NAME=dinghy
