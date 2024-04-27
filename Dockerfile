FROM valkey/valkey:7.2

COPY rootfs /
RUN /opt/bitnami/scripts/redis-cluster/postunpack.sh
ENV APP_VERSION="7.2.4" \
    BITNAMI_APP_NAME="valkey-cluster" \
    PATH="/opt/bitnami/common/bin:/opt/bitnami/redis/bin:$PATH"

EXPOSE 6379

USER 1001
ENTRYPOINT [ "/opt/bitnami/scripts/redis-cluster/entrypoint.sh" ]
CMD [ "/opt/bitnami/scripts/redis-cluster/run.sh" ]
