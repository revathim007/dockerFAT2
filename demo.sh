#!/bin/bash
set -euo pipefail

echo "=== Demo: Basic Linux commands inside container ==="
echo "User: $(whoami)"
echo "Home: $HOME"
echo "Working dir: $(pwd)"
echo ""

echo "---- Date & Time ----"
date
echo ""

echo "---- List files (ls -lah) ----"
ls -lah
echo ""

echo "---- Disk usage (df -h) ----"
df -h
echo ""

echo "---- Memory (free -h) ----"
free -h
echo ""

echo "---- Processes (ps aux | head) ----"
ps aux | head -n 8
echo ""

echo "---- Network interfaces (ip addr | head) ----"
ip addr | head -n 20
echo ""

echo "---- Create demo dir and file ----"
mkdir -p demo_dir
echo "Hello from Docker - $(date)" > demo_dir/hello.txt
ls -lah demo_dir
echo "Contents:"
cat demo_dir/hello.txt
echo ""

echo "---- curl example.com (headers only) ----"
curl -I https://example.com 2>/dev/null | head -n 6 || true
echo ""

echo "---- git version ----"
git --version || true
echo ""

echo "=== End of demo ==="
