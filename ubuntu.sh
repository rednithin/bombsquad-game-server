sudo apt-get update &&
sudo apt-get install docker-compose docker.io -y --no-install-recommends &&
git clone https://github.com/rednithin/bombsquad-game-server.git &&
cd bombsquad-game-server &&
sudo systemctl start docker &&
sudo docker-compose up --build -d