FROM gcc 
COPY . /app
WORKDIR /app
RUN make
CMD [ "./main" ]
