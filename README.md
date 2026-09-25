# Coding Assignment 11: Docker File

This is a simple React website running inside a Docker container.
The page just shows an h1 that says "Codin 1".

## What you need before starting
- Docker Desktop (installed and running)
- Node.js and npm
- Git

## How I made this
1. Made a new React app using Create React App:
   npx create-react-app singh_karanpreet_site

2. Went into the folder:
   cd singh_karanpreet_site

3. Opened src/App.js and changed it so the page just shows:
   <h1>Codin 1</h1>

4. Made a Dockerfile in the main project folder. It tells Docker to:
   - use node 18 as the base
   - set the workdir to /singh_karanpreet_site
   - copy package.json and run npm install
   - copy the rest of the project files in
   - use port 7775
   - run npm start when the container starts

5. Made a .dockerignore file so node_modules doesn't get copied in (it's big and not needed, npm install makes it fresh anyway)

6. Built the image:
   docker build -t singh_karanpreet_coding_assignment11 .

7. Ran the container:
   docker run -it --name singh_karanpreet_coding_assignment11 -p 7775:7775 singh_karanpreet_coding_assignment11

8. Opened localhost:7775 in the browser and saw "Codin 1" show up

9. Pushed everything to GitHub

## How to run it yourself
1. Clone this repo:
   git clone https://github.com/ksingh99-ux/singh_karanpreet_site.git

2. cd into it:
   cd singh_karanpreet_site

3. Build the image:
   docker build -t singh_karanpreet_coding_assignment11 .

4. Run it:
   docker run -it --name singh_karanpreet_coding_assignment11 -p 7775:7775 singh_karanpreet_coding_assignment11

5. Go to localhost:7775 in your browser

## Quick details
- Container name: singh_karanpreet_coding_assignment11
- Workdir: singh_karanpreet_site
- Port: 7775 

## How to stop it
Ctrl+C in the terminal, or:
docker stop singh_karanpreet_coding_assignment11