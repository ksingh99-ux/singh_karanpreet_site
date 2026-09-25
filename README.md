# Coding Assignment 11: Docker File

Simple react app running inside a docker container. It just shows an h1
that says "Codin 1", and it runs on localhost:7775.

## what isneeded

- Docker Desktop, installed and running
- Node.js and npm
- Git

## how I built this project

1. Made a new react app with create react app:
   npx create-react-app singh_karanpreet_site

2. Went into the folder:
   cd singh_karanpreet_site

3. Opened src/App.js and changed it so the page just shows:
   <h1>Codin 1</h1>

4. Made a Dockerfile in the main project folder. It does this:
   - starts from the node 18 alpine image
   - sets the workdir to /singh_karanpreet_site
   - copies package.json first and runs npm install
   - copies the rest of the project files in after that
   - opens up port 7775
   - runs npm start when the container starts

5. Made a .dockerignore file with just node_modules in it, so that folder
   doesn't get copied into the image. npm install rebuilds it inside the
   container anyway, so no point copying it over.

6. Built the image:
   docker build -t singh_karanpreet_coding_assignment11 .

7. Ran the container, giving it a name and mapping port 7775 on my
   computer to port 7775 inside the container:
   docker run -it --name singh_karanpreet_coding_assignment11 -p 7775:7775 singh_karanpreet_coding_assignment11

8. Opened localhost:7775 in the browser and saw "Codin 1" on the page

9. Pushed the whole project to github

## how to run it yourself

1. Clone the repo:
   git clone https://github.com/ksingh99-ux/singh_karanpreet_site.git

2. Go into the folder:
   cd singh_karanpreet_site

3. Build the image:
   docker build -t singh_karanpreet_coding_assignment11 .

4. Run the container:
   docker run -it --name singh_karanpreet_coding_assignment11 -p 7775:7775 singh_karanpreet_coding_assignment11

5. Open localhost:7775 in your browser, you should see "Codin 1"

## project details

- container name: singh_karanpreet_coding_assignment11
- workdir inside the container: singh_karanpreet_site
- port: 7775