export PATH=$PATH:/home/gharriso/git/provendb-hyperledger/bin
export CORE_PEER_LOCALMSPID=Org2MSP
export CORE_PEER_TLS_ENABLED=true
export PEER0_ORG1_CA=/home/gharriso/git/provendb-hyperledger/test-network/organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
export FABRIC_CFG_PATH=/home/gharriso/git/provendb-hyperledger/test-network/../config/
export ORDERER_CA=/home/gharriso/git/provendb-hyperledger/test-network/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem
export CORE_PEER_MSPCONFIGPATH=/home/gharriso/git/provendb-hyperledger/test-network/organizations/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp
export CORE_PEER_TLS_ROOTCERT_FILE=/home/gharriso/git/provendb-hyperledger/test-network/organizations/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt
export PEER0_ORG2_CA=/home/gharriso/git/provendb-hyperledger/test-network/organizations/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt
export PEER0_ORG3_CA=/home/gharriso/git/provendb-hyperledger/test-network/organizations/peerOrganizations/org3.example.com/peers/peer0.org3.example.com/tls/ca.crt
export CORE_PEER_ADDRESS=localhost:9051
 

peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls \
--cafile ${ORDERER_CA} \
-C guy1 -n guy1 --peerAddresses localhost:7051 \
--tlsRootCertFiles ${PEER0_ORG1_CA} \
--peerAddresses localhost:9051 \
--tlsRootCertFiles ${CORE_PEER_TLS_ROOTCERT_FILE} \
 -c '{"function":"Invoke","Args":["fred"]}'

 