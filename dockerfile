#Base Image
FROM ubuntu:20.04

# Install Packages
RUN apt update
RUN apt install wget -y
RUN apt install openjdk-17-jdk-headless

# Change Directory
RUN mkdir /Minecraft
WORKDIR /Minecraft

# Download Minecraft Server Jar
RUN wget https://launcher.mojang.com/v1/objects/3cf24a8694aca6267883b17d934efacc5e44440d/server.jar

# Start Server
ENTRYPOINT [ "java -Xmx1024M -Xms1024M -jar minecraft_server.1.18.jar nogui" ]