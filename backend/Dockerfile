# Build stage
FROM golang:1.21 as builder
WORKDIR /app
COPY . .
RUN go mod download
RUN go build -o backend .

# Run stage
FROM gcr.io/distroless/base-debian12
COPY --from=builder /app/backend /backend
EXPOSE 9000
CMD ["/backend"]
