sudo apt-get update &&
sudo apt-get install python2.7 libpython2.7 -y --no-install-recommends &&

wget https://files.ballistica.net/bombsquad/builds/BombSquad_Server_Linux_64bit_1.4.150.tar.gz &&
tar -xvf BombSquad_Server_Linux_64bit_1.4.150.tar.gz &&


cd BombSquad_Server_Linux_64bit_1.4.150 &&

echo "
# place any of your own overrides here.
# see bombsquad_server for details on what you can override
# examples (uncomment to use):
config['partyName'] = 'Docker BombSquad'
config['partyIsPublic'] = False
# config['sessionType'] = 'teams'
config['maxPartySize'] = 6
# config['port'] = 43209
# config['playlistCode'] = 1242
" > config.py &&

python2.7 bombsquad_server
