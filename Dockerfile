# Minecraft Image
FROM itzg/minecraft-server:latest

# Set environment variables for Forge
ENV EULA=TRUE
ENV TYPE=FORGE
ENV VERSION=1.20.1
ENV FORGEVERSION=47.4.0

# Add mods
COPY ./mods ./data/mods
COPY ./mods ./mods

COPY ./server.properties ./data/server.properties

# COPY ./config ./data/config
COPY ./resourcepacks ./data/resourcepacks
COPY ./shaderpacks ./data/shaderpacks

# Run the server
CMD ["start-minecraft"]
