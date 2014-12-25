FROM dockerfile/java:oracle-java7

RUN git config --global user.email "spigot@example.com"
RUN git config --global user.name "spigot"

WORKDIR /minecraft
RUN wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar && \
  java -jar BuildTools.jar && \
  rm -rf /root/.m2 && \
  find * -maxdepth 0 ! -name '*.jar' -exec rm -rf {} \;

VOLUME /data
EXPOSE 25565

WORKDIR /data
CMD ["java", "-Xms512M", "-Xmx1536M", "-XX:MaxPermSize=128M", "-jar", "/minecraft/spigot-1.8.jar"]
