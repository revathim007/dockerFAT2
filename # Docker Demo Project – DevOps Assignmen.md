# Docker Basic Linux Ops

## DevOps Concepts

### Immutable Infrastructure

Systems or servers are never modified after deployment; instead, new versions are built and deployed, reducing configuration drift and increasing reliability.

### Shift-Left Testing

Integrating testing earlier in the development lifecycle to catch bugs sooner, reduce costs, and improve software quality.

### Blue-Green Deployment

Deployment strategy where two identical environments (Blue & Green) exist. One serves live traffic while the other is updated, ensuring zero downtime during releases.

### Automated Rollback

Ability to automatically revert to the previous stable version if a deployment fails, ensuring system stability and minimizing downtime.

### Monitoring as Code (MaC)

Using code or configuration files to define monitoring and alerting rules (like Prometheus configs), making monitoring reproducible, version-controlled, and consistent across environments.

---

## Step 1: Project Setup

* Created project folder `docker-basic-linux-ops`.
* Added files: `Dockerfile`, `run_commands.sh`, `.dockerignore`, `README.md`.
* Made the script executable:

```bash
chmod +x run_commands.sh
```

## Step 2: Git Repository Initialization

```bash
git init
git add .
git commit -m "Initial commit: Dockerfile + run_commands script + README"
```

## Step 3: GitHub Repository

Created a repository named `docker-basic-linux-ops` on GitHub.

```bash
git remote add origin https://github.com/<github-username>/docker-basic-linux-ops.git
git branch -M main
git push -u origin main
```

## Step 4: Docker Image Build and Run

```bash
docker build -t docker-basic-linux-ops:1.0 .
docker run --rm docker-basic-linux-ops:1.0
```

Executed basic Linux commands:
`date`, `whoami`, `hostname`, `uname -a`, `df -h`, `free -h`, `ps aux`, `ip addr`, `ls`, `printenv`, `curl`.

## Step 5: Docker Hub Push

```bash
docker login
docker tag docker-basic-linux-ops:1.0 <dockerhub-username>/docker-basic-linux-ops:1.0
docker push <dockerhub-username>/docker-basic-linux-ops:1.0
```

---

## Question 3: How This Helps Learn DevOps, Linux, Git, and Docker

### Docker

Builds images and runs containers, practicing containerization and reproducible environments.

### Linux

Running `run_commands.sh` reinforces command-line skills: process management, disk and memory usage, network info, environment variables, and HTTP requests.

### Git & GitHub

Practiced version control: commits, branching, pushing, and collaboration workflows.

### DevOps Concepts

Simulates CI/CD pipelines: code → build → container → test → push.
Demonstrates containerization and system monitoring principles.
