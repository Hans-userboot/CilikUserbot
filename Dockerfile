FROM greycilik/cilikuserbot:buster

RUN git clone -b Hanssu-userbot https://github.com/Hans-userboot/Hans-userboot /home/hans-userboot/ \
    && chmod 777 /home/hans-userboot \
    && mkdir /home/hans-userboot/bin/

COPY ./sample_config.env ./config.env* /home/hans-userboot/

WORKDIR /home/hans-userboot/

CMD ["python3", "-m", "userbot"]
