# Auth Mocks

A collection of login provider mocks, powered by WireMock and delivered via Docker.

Currently just Google Sign-In, but more to follow.

## Usage

Requires Docker to be installed.

Run the following command to start the server:

```bash
docker run --rm -it --name auth-mocks -p 8080:8080
```

To confirm successful startup and see the OAuth2 configuration settings visit http://localhost:8080 .

