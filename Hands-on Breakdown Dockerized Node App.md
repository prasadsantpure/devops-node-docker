
# 📘 **DevOps Hands-on Breakdown: Dockerized Node App**

This document explains **everything we did step-by-step**, why we did it, what each file means, what commands were used, and answers your questions about **charges, next steps, and real DevOps workflow**.

----------

# 1. ✔️ Did you incur any charges?

### Short answer: **NO — you incurred _zero_ cost.**

### Why?

-   You worked **only locally** on your Mac (VS Code + Node + Docker Desktop).
    
-   You used **Docker Hub free tier** (pushing public images is free).
    
-   No AWS, GCP, Azure resources were used.
    

Your total cost = **₹0**.

----------

# 2. ✔️ What should be your next steps?

Your best next progression:

### **Step 1 — Push your project code to GitHub**

This becomes part of your public DevOps portfolio.

### **Step 2 — Add a README.md**

(You already created one.)

### **Step 3 — Add Docker Compose**

This teaches multi-container management.

### **Step 4 — Add CI/CD (GitHub Actions)**

This is essential DevOps skill and looks great in interviews.

----------

# 3. ✔️ As a DevOps Engineer — what files do YOU create?

### ✅ You DO create:

-   Dockerfile
    
-   docker-compose.yml
    
-   GitHub Actions CI/CD files
    
-   Terraform IaC files
    
-   Kubernetes manifest files
    
-   README documentation
    
-   Shell scripts / automation scripts
    

### 🚫 You DO NOT create:

-   Application code (index.js, app.js, backend logic, UI code)
    
-   Product features
    
-   UI/UX
    

**Your role is to support developers by enabling smooth deployment, automation, and reliability.**

----------

# 4. ✔️ Complete Breakdown of What We Did

## 4.1 Created the project folder

mkdir devops-node-docker
cd devops-node-docker

----------

## 4.2 Initialized Node project

`npm init -y` 

This generated:

-   `package.json`
    

Which describes the Node application.

----------

## 4.3 Created `index.js` (Simple Node Web Server)

const http = require("http");

const PORT = process.env.PORT || 3000;

const server = http.createServer((req, res) => {
  res.writeHead(200, { "Content-Type": "text/plain" });
  res.end("Hello from Node + Docker! 🚀\n");
});

server.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});


Purpose:

-   Provide a real app to containerize
    
-   Learn to expose ports
    
-   Demonstrate Docker workflow
    

----------

## 4.4 Tested app locally

`node index.js` 

Visited:

`http://localhost:3000` 

This confirms the app works _before_ containerizing.

----------

## 4.5 Created the `Dockerfile` (Core DevOps file)


FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]


### What each line does:

-   `FROM` → choose Node base image
    
-   `WORKDIR` → set working directory
    
-   `COPY` → move project files into container
    
-   `RUN npm install` → install dependencies
    
-   `EXPOSE 3000` → internal container port
    
-   `CMD` → command to run app
    

This is the heart of any containerized app.

----------

## 4.6 Built Docker image

`docker build -t devops-node-app:latest .` 

This turned your code + Dockerfile into a portable container image.

----------

## 4.7 Ran the container

`docker run -d -p 3000:3000 --name devops-node-container devops-node-app:latest` 

What happens:

-   The container runs in background
    
-   Your local port 3000 maps to container port 3000
    
-   App becomes accessible via browser
    

----------

## 4.8 Tagged the image for Docker Hub

`docker tag devops-node-app:latest psantpur/devops-node-app:latest` 

This makes the image upload-ready.

----------

## 4.9 Logged into Docker Hub

`docker login` 

Authenticates your local machine with Docker Hub.

----------

## 4.10 Pushed the image

`docker push psantpur/devops-node-app:latest` 

Now your image is hosted publicly and can run anywhere.

----------

# 5. ✔️ What You Learned (Very Important)

You now know how to:

-   Build & run a Node.js app
    
-   Write a Dockerfile
    
-   Build Docker images
    
-   Run images as containers
    
-   Configure ports
    
-   Tag & push to Docker Hub
    
-   Understand DevOps responsibilities
    
-   Use VS Code + Git + Docker together
    

This is **practical DevOps**, not just theoretical learning.

----------

# 6. ✔️ Recommended Next Steps (Skill Building)

### **1. Push entire project to GitHub**

(With README, breakdown file, etc.)

### **2. Add Docker Compose**

Add Redis / Mongo / MySQL.

### **3. Add CI/CD using GitHub Actions**

Pipeline:

-   Build image
    
-   Push to Docker Hub
    

### **4. Deploy your container**

Use Render, Railway, or AWS EC2 free tier.

Each step makes you _interview-ready_.
