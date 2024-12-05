echo "👉 ENTER CONTRACT NAME: "
read CONTRACT_NAME
#stellar keys fund alice --network local
#stellar keys fund bob --network local
stellar contract build   
stellar contract deploy \
  --wasm target/wasm32-unknown-unknown/release/$CONTRACT_NAME.wasm \
  --source SAHWNEINQPCHBVPFSD5Q4B3MEHB272XDA54AK54UMNIIUXXAHQWF47ZV \
  --network testnet

echo "👉 ENTER CONTRACT ID: "
read CONTRACT_ID

stellar contract invoke \
  --id $CONTRACT_ID \
  --source SAHWNEINQPCHBVPFSD5Q4B3MEHB272XDA54AK54UMNIIUXXAHQWF47ZV \
  --network testnet \
  -- \
  initialize \
  --admin GDXSK5FVZEQ2KMHPMQD4VNQXBS3FLSNAIRE246CBYX5XLDTQJ4B5AEFA
