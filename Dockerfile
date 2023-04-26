FROM adoptopenjdk/openjdk11

WORKDIR /photon

COPY . .

# Install dependencies
RUN apt-get update && apt-get install -y \
    wget \
    pbzip2

# Download photon
RUN wget https://github.com/komoot/photon/releases/download/0.4.2/photon-0.4.2.jar
RUN wget -O - https://download1.graphhopper.com/public/extracts/by-country-code/de/photon-db-de-latest.tar.bz2 | pbzip2 -cd | tar x

EXPOSE 2322

ENTRYPOINT java -jar photon-*.jar