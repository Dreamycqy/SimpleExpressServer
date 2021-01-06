#!/bin/bash
branch_name='main'
pmJson='pm2.json'

echo $branch_name

git fetch --all
git checkout ${branch_name}
git reset --hard origin/${branch_name}
git pull

pm2 startOrReload ${pmJson}
