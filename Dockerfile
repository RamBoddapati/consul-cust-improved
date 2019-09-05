# Used reference: https://hub.docker.com/_/consul
FROM consul:latest

COPY --chown=consul:consul ./voldata/ /consul/data/

CMD ["agent", "-bootstrap", "-server", "-ui"]
