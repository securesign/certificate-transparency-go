# Certificate Transparency: Go Code

[![Go Report Card](https://goreportcard.com/badge/github.com/google/certificate-transparency-go)](https://goreportcard.com/report/github.com/google/certificate-transparency-go)
[![GoDoc](https://godoc.org/github.com/google/certificate-transparency-go?status.svg)](https://godoc.org/github.com/google/certificate-transparency-go)
![CodeQL workflow](https://github.com/google/certificate-transparency-go/actions/workflows/codeql.yml/badge.svg)

This repository holds Go code related to
[Certificate Transparency](https://www.certificate-transparency.org/) (CT).  The
repository requires Go version 1.22.

 - [Repository Structure](#repository-structure)
 - [Trillian CT Personality](#trillian-ct-personality)
 - [Working on the Code](#working-on-the-code)
     - [Running Codebase Checks](#running-codebase-checks)
     - [Rebuilding Generated Code](#rebuilding-generated-code)

## Support

- Slack: https://transparency-dev.slack.com/ ([invitation](https://join.slack.com/t/transparency-dev/shared_invite/zt-27pkqo21d-okUFhur7YZ0rFoJVIOPznQ))

## Repository Structure

The main parts of the repository are:

 - Encoding libraries:
   - `asn1/` and `x509/` are forks of the upstream Go `encoding/asn1` and
     `crypto/x509` libraries.  We maintain separate forks of these packages
     because CT is intended to act as an observatory of certificates across the
     ecosystem; as such, we need to be able to process somewhat-malformed
     certificates that the stricter upstream code would (correctly) reject.
     Our `x509` fork also includes code for working with the
     [pre-certificates defined in RFC 6962](https://tools.ietf.org/html/rfc6962#section-3.1).
   - `tls` holds a library for processing TLS-encoded data as described in
     [RFC 5246](https://tools.ietf.org/html/rfc5246).
   - `x509util/` provides additional utilities for dealing with
     `x509.Certificate`s.
 - CT client libraries:
   - The top-level `ct` package (in `.`) holds types and utilities for working
     with CT data structures defined in
     [RFC 6962](https://tools.ietf.org/html/rfc6962).
   - `client/` and `jsonclient/` hold libraries that allow access to CT Logs
     via HTTP entrypoints described in
     [section 4 of RFC 6962](https://tools.ietf.org/html/rfc6962#section-4).
   - `dnsclient/` has a library that allows access to CT Logs over
     [DNS](https://github.com/google/certificate-transparency-rfcs/blob/master/dns/draft-ct-over-dns.md).
   - `scanner/` holds a library for scanning the entire contents of an existing
     CT Log.
 - CT Personality for [Trillian](https://github.com/google/trillian):
    - `trillian/` holds code that allows a Certificate Transparency Log to be
      run using a Trillian Log as its back-end -- see
      [below](#trillian-ct-personality).
 - Command line tools:
   - `./client/ctclient` allows interaction with a CT Log.
   - `./ctutil/sctcheck` allows SCTs (signed certificate timestamps) from a CT
     Log to be verified.
   - `./scanner/scanlog` allows an existing CT Log to be scanned for certificates
      of interest; please be polite when running this tool against a Log.
   - `./x509util/certcheck` allows display and verification of certificates
   - `./x509util/crlcheck` allows display and verification of certificate
     revocation lists (CRLs).
 - Other libraries related to CT:
   - `ctutil/` holds utility functions for validating and verifying CT data
     structures.
   - `loglist3/` has a library for reading
     [v3 JSON lists of CT Logs](https://groups.google.com/a/chromium.org/g/ct-policy/c/IdbrdAcDQto/m/i5KPyzYwBAAJ).


## Trillian CT Personality

The `trillian/` subdirectory holds code and scripts for running a CT Log based
on the [Trillian](https://github.com/google/trillian) general transparency Log,
and is [documented separately](trillian/README.md).


## Working on the Code

Developers who want to make changes to the codebase need some additional
dependencies and tools, described in the following sections.

### Running Codebase Checks

The [`scripts/presubmit.sh`](scripts/presubmit.sh) script runs various tools
and tests over the codebase; please ensure this script passes before sending
pull requests for review.

```bash
# Install golangci-lint
go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.61.0

# Run code generation, build, test and linters
./scripts/presubmit.sh

# Run build, test and linters but skip code generation
./scripts/presubmit.sh  --no-generate

# Or just run the linters alone:
golangci-lint run
```

### Rebuilding Generated Code

Some of the CT Go code is autogenerated from other files:

- [Protocol buffer](https://developers.google.com/protocol-buffers/) message
  definitions are converted to `.pb.go` implementations.
- A mock implementation of the Trillian gRPC API (in `trillian/mockclient`) is
  created with [GoMock](https://github.com/golang/mock).

Re-generating mock or protobuffer files is only needed if you're changing
the original files; if you do, you'll need to install the prerequisites:

- tools written in `go` can be installed with a single run of `go install`
  (courtesy of [`tools.go`](./tools/tools.go) and `go.mod`).
- `protoc` tool: you'll need [version 3.20.1](https://github.com/protocolbuffers/protobuf/releases/tag/v3.20.1) installed, and `PATH` updated to include its `bin/` directory.

With tools installed, run the following:

```bash
go generate -x ./...  # hunts for //go:generate comments and runs them
```
