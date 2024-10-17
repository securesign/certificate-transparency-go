FROM golang:1.23.2-bookworm@sha256:37189aa822b40981cf190ab86481825af5bd9eab8cc4767a975b50785b6300ef AS builder

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
FROM golang:1.23.2-bookworm@sha256:37189aa822b40981cf190ab86481825af5bd9eab8cc4767a975b50785b6300ef

COPY --from=builder /build/bin/witness /bin/witness
ENTRYPOINT ["/bin/witness"]
