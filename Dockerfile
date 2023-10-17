FROM        amazon/aws-cli
COPY        run.sh /
RUN         yum install jq -y
ENTRYPOINT  ["bash", "/run.sh"]