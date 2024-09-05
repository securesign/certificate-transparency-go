FROM golang:1.23.0-bookworm@sha256:32096e84705b30bb39cc9c65ef2896efacc4268203b7876049847763cefc934d AS builder

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
FROM golang:1.23.0-bookworm@sha256:32096e84705b30bb39cc9c65ef2896efacc4268203b7876049847763cefc934d

COPY --from=builder /build/bin/witness /bin/witness
ENTRYPOINT ["/bin/witness"]
