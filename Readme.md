# 📦 Node.js Dockerized Application  
*A simple Node.js web server containerized with Docker and published on Docker Hub.*

## 🚀 Project Overview  
This project demonstrates how to:

- Build a simple Node.js HTTP server  
- Containerize it using Docker  
- Build and run the Docker image locally  
- Push the image to Docker Hub  
- Run the application as an isolated container  

---

# 🛠 Tech Stack  
- **Node.js** (v18-alpine inside container)  
- **Docker**  
- **VS Code**  
- **Docker Hub**  

---

# 📁 Project Structure

```
devops-node-docker/
│
├── index.js          # Simple Node.js web server
├── package.json      # Node project metadata
└── Dockerfile        # Instructions to build Docker image
```

---

# 🧩 Application Code (index.js)

```js
const http = require("http");

const PORT = process.env.PORT || 3000;

const server = http.createServer((req, res) => {
  res.writeHead(200, { "Content-Type": "text/plain" });
  res.end("Hello from Node + Docker! 🚀\\n");
});

server.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
```

---

# 🐳 Dockerfile

```dockerfile
FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]
```

---

# 🔨 Build the Docker Image

```
docker build -t devops-node-app:latest .
```

---

# ▶️ Run the Docker Container

```
docker run -d -p 3000:3000 --name devops-node-container devops-node-app:latest
```

Visit in browser:  
**http://localhost:3000**

---

# 📤 Push to Docker Hub

Tag the image:

```
docker tag devops-node-app:latest psantpur/devops-node-app:latest
```

Push:

```
docker push psantpur/devops-node-app:latest
```

---

# ✔️ Summary  

This project teaches you:

- Dockerfile creation  
- Building & running Docker containers  
- Registry pushes  
- Basic Node.js server setup  

A perfect beginner DevOps hands-on project.  