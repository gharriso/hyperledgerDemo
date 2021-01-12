PEER1=`docker ps |grep peer0.org2.example.com|grep fabric-peer|cut -f1 -d' '`
docker exec -it $PEER1 peer chaincode invoke -o orderer.example.com:7050 -C guy1 -c '{"Args":["dummy"]}' -n guy1