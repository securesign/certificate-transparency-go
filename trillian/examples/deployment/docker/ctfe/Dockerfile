FROM golang:1.23.4-bookworm@sha256:95db116434e3f21a2a15600ffc7169bf380c6bfd021b154d106fcb346721c277 as build

ARG GOFLAGS=""
ENV GOFLAGS=$GOFLAGS

WORKDIR /build

COPY go.mod .
COPY go.sum .
RUN go mod download
COPY . .

RUN go build ./trillian/ctfe/ct_server

FROM gcr.io/distroless/base-debian12@sha256:0c70ab46409b94a96f4e98e32e7333050581e75f7038de2877a4bfc146dfc7ce

COPY --from=build /build/ct_server /

ENTRYPOINT ["/ct_server"]
