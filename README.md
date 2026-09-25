# Coding Assignment 11: Docker File

This project runs a Create React App website inside a Docker container.
The page shows an h1 that says "Codin 1".

## What you need
- Docker Desktop installed and running
- Git

## How to run it
1. Clone the repo:
   git clone https://github.com/ksingh99-ux/singh_karanpreet_site.git
2. Go into the folder:
   cd singh_karanpreet_site
3. Build the image:
   docker build -t singh_karanpreet_coding_assignment11 .
4. Run the container:
   docker run -it --name singh_karanpreet_coding_assignment11 -p 7775:7775 singh_karanpreet_coding_assignment11
5. Open http://localhost:7775 in your browser. You should see "Codin 1".

## Details
- Container name: singh_karanpreet_coding_assignment11
- Workdir inside the container: singh_karanpreet_site
- Port: 7775 on my computer maps to 7775 in the container

## How to stop it
Press Ctrl+C in the terminal, or run:
docker stop singh_karanpreet_coding_assignment11