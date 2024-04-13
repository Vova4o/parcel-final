FROM golang:1.21.0

WORKDIR /app

COPY . .

#Trying to see if changes will go through

RUN go mod download

COPY *.go ./

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /parcel_app

CMD ["/parcel_app"]