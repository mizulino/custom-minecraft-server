# Minecraft Image
FROM itzg/minecraft-server:latest

# Set environment variables for Forge
ENV EULA=TRUE
ENV TYPE=FORGE
ENV VERSION=1.20.1
ENV FORGEVERSION=47.4.0
ENV MEMORY=4G

# Add mods
COPY ./mods ./data/mods
COPY ./mods ./mods

# Add server.properties
COPY ./server.properties ./data/server.properties

# Default command to run Minecraft server 
CMD ["start-minecraft"]

