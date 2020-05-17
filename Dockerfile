FROM golang:1.13-stretch

# Copy project into docker instance
WORKDIR /go/src/app
COPY . .

# Build and install backend
RUN go get -d -v ./...
RUN go install -v ./...

# Expose 9091 port
EXPOSE 9091

# Set run command
CMD codenames 9091
