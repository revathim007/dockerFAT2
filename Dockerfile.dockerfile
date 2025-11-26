# Use Ubuntu as base
FROM ubuntu:22.04

# Avoid interactive prompts during install
ENV DEBIAN_FRONTEND=noninteractive

# Install basic Linux utilities
RUN apt-get update && apt-get install -y \
    curl \
    git \
    procps \
    iproute2 \
    vim \
    ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# Create a user
RUN useradd -ms /bin/bash devuser

WORKDIR /home/devuser

# Copy demo.sh and make it executable
COPY demo.sh /home/devuser/demo.sh
RUN chmod +x /home/devuser/demo.sh && chown devuser:devuser /home/devuser/demo.sh

USER devuser

# Run demo script
CMD ["/home/devuser/demo.sh"]
