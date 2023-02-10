This docker-compose.yml file and Dockerfile will create a container for kotlin/gradle/springboot web server.  
  
Please go to https://start.spring.io/ and generate an initial project with gradle/kotlin option and download the generated zip file.  
  
Extract the contents of the zip file to app/ folder. Then go to where docker-compose.yml file is via terminal, type docker compose up --build  
  
You should be able to see Hello World! in http://localhost:8080/
  
There's already a sample application in /app/ folder, but it's best to get the latest version from the link above.