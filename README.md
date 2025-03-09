# todo
Successfully created a Docker image of the simple to-do-list and pushed it into dockerhub using nginx as web server  

---

Deployed a Static Website using Nginx & Docker  

Project Overview  
This project demonstrates how to containerize and deploy a static website using **Nginx and Docker**. The website contains simple HTML, CSS, and JavaScript files that will be served using an Nginx web server inside a Docker container.  

Steps to Deploy  

1. Clone the Repository  
```sh
git clone https://github.com/your-username/my-nginx-website.git
cd my-nginx-website
```

2. Create a Dockerfile  
Create a file named `Dockerfile` which defines how our Docker image to be built.

3. Build the Docker Image  
```sh
docker build -t my-nginx-website .
```

4. Run the Container Locally  
```sh
docker run -d -p 8080:80 my-nginx-website
```
Now, open `http://localhost:8080` in your browser to see the website.  

5. Push the Image to DockerHub  
First, log in to DockerHub:  
```sh
docker login
```
Tag the image:  
```sh
docker tag my-nginx-website your-dockerhub-username/my-nginx-website
```
Push the image:  
```sh
docker push your-dockerhub-username/my-nginx-website
```

6. Deploy the Website from DockerHub  
To run the website from DockerHub on any system:  
```sh
docker run -d -p 8080:80 your-dockerhub-username/my-nginx-website
```

7. Stop & Remove the Container  
```sh
docker ps   # List running containers  
docker stop <CONTAINER_ID>  
docker rm <CONTAINER_ID>  
```
 
- Created a Dockerfile to serve a static website with Nginx.  
- Built and ran a Docker container locally.  
- Pushed the Docker image to DockerHub.  
- Pulled and deployed the image from DockerHub on any system.  

This process makes it easy to deploy a static website anywhere using Docker.

You can easily run the container in your local system by entering the following command while your docker is running.
```sh
docker run -d -p 8080:80 madhulathabandaru/my-nginx-website
```
