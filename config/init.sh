rm -rf /chaindata/privnet/*
geth --nousb --datadir /chaindata/privnet init /config/privnet.json
geth --nousb account import /config/rawkey --datadir /chaindata/privnet --password /dev/null