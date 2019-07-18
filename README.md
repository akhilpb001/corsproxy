# corsproxy

A lightweight corsproxy docker image based on nodejs [corsproxy](https://www.npmjs.com/package/corsproxy).

### Docker

Pull and run the prebuilt docker image from [docker hub](https://cloud.docker.com/repository/docker/akhilpb001/corsproxy).

```
# Pull image
docker pull akhilpb001/corsproxy

# Run container
docker run -p 1337:1337 --name corsproxy -d akhilpb001/corsproxy
```

It is also possible to build and run the corsproxy in a docker container:

```
# Build image
docker build -t corsproxy .

# Run container
docker run -p 1337:1337 --name corsproxy -d corsproxy
```

## Setup

```
npm install -g corsproxy
corsproxy
# with custom port: CORSPROXY_PORT=1234 corsproxy
# with custom host: CORSPROXY_HOST=localhost corsproxy
# with debug server: DEBUG=1 corsproxy
# with custom payload max bytes set to 10MB (1MB by default): CORSPROXY_MAX_PAYLOAD=10485760 corsproxy
```

## Usage

The cors proxy will start at http://localhost:1337.
To access another domain, use the domain name (including port) as the first folder, e.g.

- http://localhost:1337/localhost:3000/sign_in
- http://localhost:1337/my.domain.com/path/to/resource
- etc etc

By default the cors proxy will only answer requests sent to localhost. To use another domain (e.g. machine name) set an enviroment variable CORSPROXY_HOST to the required value before launching.

## License

MIT
