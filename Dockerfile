#FROM arm32v7/nextcloud:latest
FROM raspbian/stretch:latest


RUN apt-get update && apt-get upgrade && apt-get install motion

RUN mkdir -p /mnt/motion/mymotion
COPY motion.conf /mnt/motion/mymotion/motion.conf

VOLUME /mnt/motion
EXPOSE 8081
ENTRYPOINT ["motion", "-c /mnt/motion/mymotion/motion.conf"]
