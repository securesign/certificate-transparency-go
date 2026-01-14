FROM golang:1.24.11-bookworm@sha256:48598621657fe214b140f059f9e53b36f506d4dbc6ad3ef79aed1af590706425 as builder

ARG GOFLAGS=""
ENV GOFLAGS=$GOFLAGS

# Move to working directory /build
WORKDIR /build

# Copy and download dependency using go mod
COPY go.mod .
COPY go.sum .
RUN go mod download

# Copy the code into the container
COPY . .

# Build the application
RUN go build -o /build/bin/feeder ./internal/witness/cmd/feeder

# Build release image
FROM alpine:3.22@sha256:4b7ce07002c69e8f3d704a9c5d6fd3053be500b7f1c69fc0d80990c2ad8dd412

COPY --from=builder /build/bin/feeder /bin/feeder
ENTRYPOINT ["/bin/feeder"]
