FROM golang:1.24.2-bookworm@sha256:75e6700eab3c994f730e36f357a26ee496b618d51eaecb04716144e861ad74f3 AS builder

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
FROM golang:1.24.2-bookworm@sha256:75e6700eab3c994f730e36f357a26ee496b618d51eaecb04716144e861ad74f3

COPY --from=builder /build/bin/witness /bin/witness
ENTRYPOINT ["/bin/witness"]
