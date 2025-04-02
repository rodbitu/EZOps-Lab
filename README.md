<h1 align="center">EZOps DevOps Lab</h1>

<p align="center">
  <img alt="License" src="https://img.shields.io/static/v1?label=License&message=MIT&color=8257E5&labelColor=000000">
  <img alt="Language" src="https://img.shields.io/static/v1?label=Type&message=DevOps&color=8257E5&labelColor=000000">
  <img alt="Version" src="https://img.shields.io/static/v1?label=Version&message=1.0.0&color=8257E5&labelColor=000000">
</p>

<p align="center">
  <img alt="Project Architecture" src="https://via.placeholder.com/800x400?text=Project+Architecture" />
</p>

## ✨ Technologies

This project was developed using the following technologies:

- **Python 3 & Flask** – for the web application
- **Docker** – for containerization
- **Kubernetes** – for orchestration (using Minikube or Docker Desktop)
- **Terraform** – for infrastructure as code
- **GitHub Actions** – for CI/CD automation

## 💻 Project Overview

EZOps Lab is a comprehensive example that demonstrates modern DevOps practices. The project containerizes a simple Flask application, deploys it on a Kubernetes cluster, manages infrastructure with Terraform, and automates the CI/CD pipeline with GitHub Actions. This setup is ideal for showcasing end-to-end deployment strategies and best practices in a real-world environment.

## 🚀 How to Run

Follow these detailed steps to set up and run the project:

### 1. Clone the Repository

```bash
git clone https://github.com/rodbitu/EZOps.git
cd EZOps
```

### 2. Set Up the Python Environment

- **Create and Activate a Virtual Environment:**

  ```bash
  python3 -m venv venv
  source venv/bin/activate
  ```

- **Install Python Dependencies:**

  ```bash
  pip install -r app/requirements.txt
  ```

- **Run the Flask Application Locally:**

  ```bash
  python app/app.py
  ```

  Open http://localhost:5000 in your browser to verify the application is running.

### 3. Build and Run with Docker

- **Build the Docker Image:**

  From the project root (ensure the build context includes the `app/` directory):

  ```bash
  docker build -t <your_dockerhub_username>/my-app:latest -f docker/Dockerfile .
  ```

- **Run the Docker Container:**

  ```bash
  docker run -p 5000:5000 <your_dockerhub_username>/my-app:latest
  ```

  Access http://localhost:5000 to verify the containerized application.

### 4. Deploy to Kubernetes

- **Start Your Local Kubernetes Cluster:**

  For example, with Minikube:

  ```bash
  minikube start
  ```

- **Deploy the Application:**

  For example, with Minikube:

  ```bash
  kubectl apply -f k8s/deployment.yaml
  ```

- **Expose the Deployment:**

  For example, with Minikube:

  ```bash
  kubectl expose deployment my-app-deployment --type=NodePort --port=5000
  ```

- **Access the Application:**

  Get the URL via:

  ```bash
  minikube service my-app-deployment --url
  ```

  Open the provided URL in your browser to see the running application.
