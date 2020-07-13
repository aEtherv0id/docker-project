FROM jboss/keycloak:latest

ARG kc_usr
ARG kc_pass

ENV KEYCLOAK_USER=${kc_usr:-gt-kc-admin}
ENV KEYCLOAK_PASSWORD=${kc_pass:-password}

RUN echo -e "keycloak admin username: $KEYCLOAK_USER"

EXPOSE 8080
EXPOSE 8443

ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]

CMD ["-b", "0.0.0.0"]



