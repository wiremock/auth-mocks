ARG WIREMOCK_VERSION=3.5.4

FROM wiremock/wiremock:$WIREMOCK_VERSION

LABEL maintainer="WireMock <team@wiremock.io>"

ARG JWT_EXTENSION_VERSION=0.1.0

RUN wget https://repo1.maven.org/maven2/org/wiremock/extensions/wiremock-jwt-extension-standalone/$JWT_EXTENSION_VERSION/wiremock-jwt-extension-standalone-$JWT_EXTENSION_VERSION.jar \
  -O /var/wiremock/extensions/wiremock-jwt-extension-standalone-$JWT_EXTENSION_VERSION.jar

COPY mocks /mocks

COPY auth-mocks-entrypoint.sh /

EXPOSE 8080 8443

ENTRYPOINT ["/auth-mocks-entrypoint.sh"]