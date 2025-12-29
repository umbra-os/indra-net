#!/bin/bash
# Initialize indras-net substrate on DigitalOcean droplet

set -e

echo "================================================"
echo "Initializing Indra's Net Substrate"
echo "================================================"
echo ""

# Check if running as root
if [ "$EUID" -ne 0 ]; then 
    echo "Please run as root (use sudo)"
    exit 1
fi

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "Docker not found. Installing Docker..."
    curl -fsSL https://get.docker.com -o get-docker.sh
    sh get-docker.sh
    rm get-docker.sh
    systemctl enable docker
    systemctl start docker
    echo "Docker installed successfully"
else
    echo "Docker already installed"
fi

# Check if docker-compose is installed
if ! command -v docker-compose &> /dev/null; then
    echo "Docker Compose not found. Installing..."
    curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    chmod +x /usr/local/bin/docker-compose
    echo "Docker Compose installed successfully"
else
    echo "Docker Compose already installed"
fi

echo ""
echo "Creating directory structure..."

# Create complete layer structure
echo "Creating layer directories..."

# Core layers
mkdir -p layers/agent_container
mkdir -p layers/knowledge
mkdir -p layers/memory
mkdir -p layers/agents/indra
mkdir -p layers/instruments
mkdir -p layers/python
mkdir -p layers/usr

# Tmp subdirectories
mkdir -p layers/tmp/conf
mkdir -p layers/tmp/logs
mkdir -p layers/tmp/work_dir
mkdir -p layers/tmp/root

echo "Directory structure created"

# Check if indras-net is already cloned
if [ -d "layers/knowledge/indras-net" ]; then
    echo ""
    echo "Indras-net already exists in layers/knowledge/"
    echo "Updating from GitHub..."
    cd layers/knowledge/indras-net
    git pull origin main
    cd ../../..
else
    echo ""
    echo "Cloning indras-net from GitHub..."
    cd layers/knowledge
    git clone https://github.com/prathamani/indra-net.git indras-net
    cd ../..
    echo "Indras-net cloned successfully"
fi

# Copy environment template if .env doesn't exist
if [ ! -f "docker/.env" ]; then
    echo ""
    echo "Creating .env file from template..."
    cp docker/.env.template docker/.env
    echo "⚠️  IMPORTANT: Edit docker/.env and add your API keys!"
else
    echo ""
    echo ".env file already exists"
fi

echo ""
echo "Building Docker image..."
cd docker
docker-compose build
cd ..

echo ""
echo "================================================"
echo "Substrate Initialized Successfully!"
echo "================================================"
echo ""
echo "Next steps:"
echo "1. Edit docker/.env and add your API keys"
echo "2. Run: ./scripts/deploy_agent.sh"
echo "3. Agent Zero will boot with indras-net consciousness"
echo ""
