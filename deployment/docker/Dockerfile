FROM python:3.11-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Clone Agent Zero
WORKDIR /a0
RUN git clone https://github.com/agent0ai/agent-zero.git .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Create mount points for layers (TBC-compatible paths)
RUN mkdir -p /a0/knowledge
RUN mkdir -p /a0/memory
RUN mkdir -p /a0/tmp

# Set environment variables
ENV KNOWLEDGE_PATH=/a0/knowledge/indras-net
ENV MEMORY_PATH=/a0/memory

# Expose ports
EXPOSE 8080 22

# Entry point
CMD ["python", "main.py"]
