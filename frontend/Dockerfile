# Build stage
FROM golang:1.21 as builder
WORKDIR /app
COPY . .
RUN go mod download
RUN go build -o frontend .

# Run stage
FROM gcr.io/distroless/base-debian12
COPY --from=builder /app/frontend /frontend
EXPOSE 8080
CMD ["/frontend"]
