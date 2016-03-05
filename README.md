# ruippeixotog/spigot Docker image

This repository contains the Dockerfile for `ruippeixotog/spigot`, a Docker image containing a running instalation of [Spigot](http://www.spigotmc.org/wiki/about-spigot/). Spigot is a highly optimized Minecraft server based on the now defunct CraftBukkit.

## How to run

Create a container from this image with:

```
docker run -d -p 25565:25565 -v /path/to/mc_data:/data ruippeixotog/spigot
```

## Ports

* **25565** - The default Minecraft server port.

## Volumes

* **/data** - The directory containing all the server data including configurations, worlds and CraftBukkit plugins.
