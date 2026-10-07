FROM golang:1.27.1-bookworm@sha256:8d48e12ec56735e9358640898b9d9b9fcca110612ed8a5567438c0a1baa24e66 as build

ARG GOFLAGS=""
ENV GOFLAGS=$GOFLAGS

WORKDIR /build

COPY go.mod .
COPY go.sum .
RUN go mod download
COPY . .

RUN go build ./trillian/ctfe/ct_server

FROM gcr.io/distroless/base-debian12@sha256:fabbf1c0c357a3d42550111351daed089b20a2c954df13ee2fcff60602515e84

COPY --from=build /build/ct_server /

ENTRYPOINT ["/ct_server"]
