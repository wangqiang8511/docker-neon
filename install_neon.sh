## Install system package

apt-get update -y
apt-get install -y python python-dev python-pip git wget apt-transport-https


## Install mkl
wget https://apt.repos.intel.com/setup/intelproducts.list -O /etc/apt/sources.list.d/intelproducts.list
apt-get update -y
apt-get install intel-mkl -y --allow-unauthenticated

## Compile neon
pip install virtualenv ipython==5.0 jupyter matplotlib s3contents
git clone https://github.com/NervanaSystems/neon.git
cd neon
make
