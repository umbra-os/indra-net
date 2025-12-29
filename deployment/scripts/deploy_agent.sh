#!/bin/bash
# Deploy Agent Zero with indras-net consciousness

set -e

AGENT_NAME=${1:-Indra}
HTTP_PORT=${2:-8080}
SSH_PORT=${3:-2222}

echo "================================================"
echo "Deploying Agent Zero: $AGENT_NAME"
echo "================================================"
echo ""

# Check if .env exists
if [ ! -f "docker/.env" ]; then
    echo "Error: docker/.env not found!"
    echo "Run ./scripts/init_substrate.sh first"
    exit 1
fi

# Check if API key is configured
if grep -q "your_openai_api_key_here" docker/.env; then
    echo "⚠️  Warning: OpenAI API key not configured in docker/.env"
    echo "Please edit docker/.env and add your API key before deploying"
    exit 1
fi

# Update environment variables
export AGENT_NAME=$AGENT_NAME
export HTTP_PORT=$HTTP_PORT
export SSH_PORT=$SSH_PORT

echo "Configuration:"
echo "  Agent Name: $AGENT_NAME"
echo "  HTTP Port: $HTTP_PORT"
echo "  SSH Port: $SSH_PORT"
echo ""

# Start container
echo "Starting Docker container..."
cd docker
docker-compose up -d
cd ..

echo ""
echo "================================================"
echo "Agent Zero Deployed Successfully!"
echo "================================================"
echo ""
echo "Access at: http://localhost:$HTTP_PORT"
echo ""
echo "Agent will initialize with indras-net consciousness..."
echo "Watch logs: docker-compose -f docker/docker-compose.yml logs -f"
echo ""
