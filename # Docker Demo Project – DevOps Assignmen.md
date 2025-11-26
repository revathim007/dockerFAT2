# Docker Demo Project – DevOps Assignment

## 1. DevOps Concepts Used

For this assignment, I have applied the following 5 DevOps concepts:

1. **Version Control (Git)**  
   - Used to track changes in code files, manage project history, and collaborate effectively.  

2. **Containerization (Docker)**  
   - Docker is used to package applications and their dependencies into a single, portable container.

3. **Continuous Integration / Continuous Deployment (CI/CD)**  
   - Understanding Docker containers prepares for automated build and deployment pipelines in DevOps.

4. **Infrastructure as Code (IaC)**  
   - Dockerfile acts as code to define the application environment consistently.

5. **Monitoring and Testing**  
   - Using Linux commands inside the container helps understand system monitoring and basic testing concepts.

---

## 2. How I Completed the Assignment

### Docker Steps:

1. **Create `Dockerfile`** to use Ubuntu base image and install Linux utilities:

```dockerfile
FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    curl \
    git \
    procps \
    iproute2 \
    vim \
    ca-certificates && \
    rm -rf /var/lib/apt/lists/*
RUN useradd -ms /bin/bash devuser
WORKDIR /home/devuser
COPY demo.sh /home/devuser/demo.sh
RUN chmod +x /home/devuser/demo.sh && chown devuser:devuser /home/devuser/demo.sh
USER devuser
CMD ["/home/devuser/demo.sh"]
## How This Helps Learn DevOps, Linux, Git, and Docker

- **Docker:**  
  Learned how to build images, run containers, manage layers, and execute scripts inside a container.

- **Linux:**  
  Practiced basic Linux commands (`ls`, `pwd`, `whoami`) in a controlled container environment.

- **Git:**  
  Learned version control, committing changes, and pushing code to GitHub.

- **DevOps Concepts:**  
  Understood containerization, infrastructure as code (Dockerfile), and workflow automation.  
  Learned the importance of reproducibility, automation, and environment management in DevOps.