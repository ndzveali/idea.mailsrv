FROM hardware/debian-mail-overlay:latest
LABEL maintainer=X
ARG DEBIAN_FRONTEND=noninteractive
ENV PYTHONUNBUFFERED=1

EXPOSE 25 143 465 587 993 4190 11334
COPY rootfs /
RUN chmod +x /usr/local/bin/* /services/*/run /services/.s6-svscan/finish
CMD ["run.sh"]
