ARG IMAGE_STEAMCMD_NAME
ARG IMAGE_STEAMCMD_VERSION


FROM ${IMAGE_STEAMCMD_NAME}:${IMAGE_STEAMCMD_VERSION}
LABEL maintainer="Sebastian Korzeniecki <seba5zer@gmail.com>"

ARG BUILD_GAME_ID

ENV PZ_HOME=${USER_HOME}/Zomboid

COPY --chown=${STEAM_USER}:0 docker-entrypoint.sh ./

RUN sed -i "s/{{GAME_ID}}/${BUILD_GAME_ID}/" ${STEAMCMD_HOME}/server_script.txt

VOLUME ["${STEAM_HOME}", "${SERVER_HOME}", "${PZ_HOME}"]

ENTRYPOINT ["./docker-entrypoint.sh"]

CMD ["run"]

EXPOSE 8766-8767/udp 16261-16262/udp
