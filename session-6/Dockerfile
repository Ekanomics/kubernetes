FROM ubuntu
RUN apt-get update ; apt-get -y install fortune
ADD app.sh /bin/app.sh
RUN chmod +x /bin/app.sh
ENTRYPOINT ["/bin/app.sh"]
CMD ["10"]

# When there is CMD and ENTRYPOINT in the Dockerfile, CMD is a passing argument to ENTRYPOINT
# CMD 10 sec - default value which passing to ENTRYPOINT

