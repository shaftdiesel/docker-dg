#/bin/bash
#Docker run commands 
docker run -d --name squid sameersbn/squid
docker run -p 8080:8080 -d --name dansguardian --link squid:squid shaftdiesel/docker-dg:latest

