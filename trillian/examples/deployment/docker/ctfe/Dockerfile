FROM golang:1.23.4-bookworm@sha256:95db116434e3f21a2a15600ffc7169bf380c6bfd021b154d106fcb346721c277 as build

ARG GOFLAGS=""
ENV GOFLAGS=$GOFLAGS

WORKDIR /build

COPY go.mod .
COPY go.sum .
RUN go mod download
COPY . .

RUN go build ./trillian/ctfe/ct_server

FROM gcr.io/distroless/base-debian12@sha256:9dce90e688a57e59ce473ff7bc4c80bc8fe52d2303b4d99b44f297310bbd2210

COPY --from=build /build/ct_server /

ENTRYPOINT ["/ct_server"]
