FROM golang:1.27.1-bookworm@sha256:74138d243a7968b954d70ab90c0927a4e87e814ffd554152e8b50b9973505c23 AS builder

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
RUN go build -o /build/bin/witness ./internal/witness/cmd/witness

# Build release image
FROM golang:1.27.1-bookworm@sha256:74138d243a7968b954d70ab90c0927a4e87e814ffd554152e8b50b9973505c23

COPY --from=builder /build/bin/witness /bin/witness
ENTRYPOINT ["/bin/witness"]
