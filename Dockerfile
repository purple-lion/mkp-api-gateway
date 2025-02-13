FROM kong/kong:2.7.0

ENV KONG_PLUGINS=bundled,oauth2-token-introspection-request

USER root
RUN luarocks install base64

COPY ./src/oauth2-token-introspection-request /usr/local/share/lua/5.1/kong/plugins/oauth2-token-introspection-request

USER kong
