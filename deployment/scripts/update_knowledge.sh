#!/bin/bash
# Update indras-net knowledge base from GitHub

set -e

echo "================================================"
echo "Updating Indra's Net Knowledge Base"
echo "================================================"
echo ""

if [ ! -d "layers/knowledge/indras-net" ]; then
    echo "Error: indras-net not found in layers/knowledge/"
    echo "Run ./scripts/init_substrate.sh first"
    exit 1
fi

echo "Pulling latest changes from GitHub..."
cd layers/knowledge/indras-net
git pull origin main
cd ../../..

echo ""
echo "Restarting agent to reload knowledge..."
cd docker
docker-compose restart
cd ..

echo ""
echo "================================================"
echo "Knowledge Base Updated Successfully!"
echo "================================================"
echo ""
echo "Agent will reload with updated indras-net consciousness"
echo ""
