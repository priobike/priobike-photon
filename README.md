# Photon

This repo contains a Dockerfile to self host a [Photon](https://github.com/komoot/photon) instance. Photon provides geocoding and search as you type functionality.

[Learn more about PrioBike](https://github.com/priobike)

## Quickstart

The easiest way to run photon is to use the contained `Dockerfile`:
```
docker build -t priobike-photon . && docker run -p 2322:2322 --rm priobike-photon
```

## API and CLI

Use the geosearch:
```
curl "http://localhost:2322/api?q={searchstring}&lat={positionLat}&lon={positionLon}&bbox={minLon},{minLat},{maxLon},{maxLat}&lang=de&limit=10"
```

Use the reverse geocoding:
```
curl "http://localhost:2322/reverse?lon={longitude}&lat={latitude}"
```

Github-Repo: [Photon](https://github.com/komoot/photon)

## What else to know
- We use one database for all of Germany, so there is no distinction between Dresden and Hamburg.
- We still seperate staging and production (main/stable) to be able to test new versions before deploying them to production.

## Contributing

We highly encourage you to open an issue or a pull request. You can also use our repository freely with the `MIT` license.

Every service runs through testing before it is deployed in our release setup. Read more in our [PrioBike deployment readme](https://github.com/priobike/.github/blob/main/wiki/deployment.md) to understand how specific branches/tags are deployed.

## Anything unclear?

Help us improve this documentation. If you have any problems or unclarities, feel free to open an issue.
