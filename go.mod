module github.com/google/certificate-transparency-go

go 1.23.0

toolchain go1.23.7

require (
	github.com/DATA-DOG/go-sqlmock v1.5.2
	github.com/fullstorydev/grpcurl v1.9.2
	github.com/go-sql-driver/mysql v1.8.1
	github.com/golang/mock v1.6.0
	github.com/google/go-cmp v0.7.0
	github.com/google/trillian v1.7.1
	github.com/gorilla/mux v1.8.1
	github.com/hashicorp/golang-lru/v2 v2.0.7
	github.com/jackc/pgerrcode v0.0.0-20240316143900-6e2875d9b438
	github.com/jackc/pgx/v5 v5.7.2
	github.com/kylelemons/godebug v1.1.0
	github.com/mattn/go-sqlite3 v1.14.24
	github.com/prometheus/client_golang v1.20.5
	github.com/rs/cors v1.11.1
	github.com/sergi/go-diff v1.3.1
	github.com/spf13/cobra v1.8.1
	github.com/spf13/pflag v1.0.6
	github.com/tomasen/realip v0.0.0-20180522021738-f0c99a92ddce
	github.com/transparency-dev/merkle v0.0.2
	go.etcd.io/etcd/client/v3 v3.5.20
	go.etcd.io/etcd/etcdctl/v3 v3.5.20
	go.etcd.io/etcd/v3 v3.5.20
	golang.org/x/crypto v0.36.0
	golang.org/x/net v0.37.0
	golang.org/x/time v0.10.0
	google.golang.org/grpc v1.71.0
	google.golang.org/protobuf v1.36.6
	gopkg.in/yaml.v3 v3.0.1
	k8s.io/klog/v2 v2.130.1
)

require (
	bitbucket.org/creachadair/shell v0.0.8 // indirect
	cel.dev/expr v0.19.1 // indirect
	cloud.google.com/go/auth v0.15.0 // indirect
	cloud.google.com/go/auth/oauth2adapt v0.2.8 // indirect
	cloud.google.com/go/compute/metadata v0.6.0 // indirect
	cloud.google.com/go/monitoring v1.24.1 // indirect
	cloud.google.com/go/trace v1.11.5 // indirect
	contrib.go.opencensus.io/exporter/stackdriver v0.13.14 // indirect
	filippo.io/edwards25519 v1.1.0 // indirect
	github.com/aws/aws-sdk-go v1.51.8 // indirect
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/bgentry/speakeasy v0.1.0 // indirect
	github.com/bufbuild/protocompile v0.10.0 // indirect
	github.com/cenkalti/backoff/v4 v4.3.0 // indirect
	github.com/census-instrumentation/opencensus-proto v0.4.1 // indirect
	github.com/cespare/xxhash/v2 v2.3.0 // indirect
	github.com/cncf/xds/go v0.0.0-20250326154945-ae57f3c0d45f // indirect
	github.com/coreos/go-semver v0.3.1 // indirect
	github.com/coreos/go-systemd/v22 v22.5.0 // indirect
	github.com/cpuguy83/go-md2man/v2 v2.0.6 // indirect
	github.com/dustin/go-humanize v1.0.1 // indirect
	github.com/envoyproxy/go-control-plane/envoy v1.32.4 // indirect
	github.com/envoyproxy/protoc-gen-validate v1.2.1 // indirect
	github.com/fatih/color v1.15.0 // indirect
	github.com/felixge/httpsnoop v1.0.4 // indirect
	github.com/go-logr/logr v1.4.2 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang-jwt/jwt/v4 v4.5.2 // indirect
	github.com/golang/groupcache v0.0.0-20241129210726-2c02b8208cf8 // indirect
	github.com/golang/protobuf v1.5.4 // indirect
	github.com/google/btree v1.1.3 // indirect
	github.com/google/s2a-go v0.1.9 // indirect
	github.com/google/uuid v1.6.0 // indirect
	github.com/googleapis/enterprise-certificate-proxy v0.3.6 // indirect
	github.com/googleapis/gax-go/v2 v2.14.1 // indirect
	github.com/gorilla/websocket v1.5.3 // indirect
	github.com/grpc-ecosystem/go-grpc-middleware v1.4.0 // indirect
	github.com/grpc-ecosystem/go-grpc-prometheus v1.2.0 // indirect
	github.com/grpc-ecosystem/grpc-gateway v1.16.0 // indirect
	github.com/grpc-ecosystem/grpc-gateway/v2 v2.19.1 // indirect
	github.com/inconshreveable/mousetrap v1.1.0 // indirect
	github.com/jackc/pgpassfile v1.0.0 // indirect
	github.com/jackc/pgservicefile v0.0.0-20240606120523-5a60cdf6a761 // indirect
	github.com/jackc/puddle/v2 v2.2.2 // indirect
	github.com/jhump/protoreflect v1.16.0 // indirect
	github.com/jmespath/go-jmespath v0.4.1-0.20220621161143-b0104c826a24 // indirect
	github.com/jonboulle/clockwork v0.4.0 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/klauspost/compress v1.17.11 // indirect
	github.com/letsencrypt/pkcs11key/v4 v4.0.0 // indirect
	github.com/lib/pq v1.10.9 // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.19 // indirect
	github.com/mattn/go-runewidth v0.0.16 // indirect
	github.com/miekg/pkcs11 v1.1.1 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/munnerz/goautoneg v0.0.0-20191010083416-a7dc8b61c822 // indirect
	github.com/olekukonko/errors v0.0.0-20250405072817-4e6d85265da6 // indirect
	github.com/olekukonko/ll v0.0.8 // indirect
	github.com/olekukonko/tablewriter v1.0.8 // indirect
	github.com/planetscale/vtprotobuf v0.6.1-0.20250313105119-ba97887b0a25 // indirect
	github.com/prometheus/client_model v0.6.2 // indirect
	github.com/prometheus/common v0.55.0 // indirect
	github.com/prometheus/procfs v0.15.1 // indirect
	github.com/prometheus/prometheus v0.51.0 // indirect
	github.com/rivo/uniseg v0.4.7 // indirect
	github.com/russross/blackfriday/v2 v2.1.0 // indirect
	github.com/sirupsen/logrus v1.9.3 // indirect
	github.com/soheilhy/cmux v0.1.5 // indirect
	github.com/tmc/grpc-websocket-proxy v0.0.0-20220101234140-673ab2c3ae75 // indirect
	github.com/urfave/cli v1.22.16 // indirect
	github.com/xiang90/probing v0.0.0-20221125231312-a49e3df8f510 // indirect
	go.etcd.io/bbolt v1.3.11 // indirect
	go.etcd.io/etcd/api/v3 v3.5.20 // indirect
	go.etcd.io/etcd/client/pkg/v3 v3.5.20 // indirect
	go.etcd.io/etcd/client/v2 v2.305.20 // indirect
	go.etcd.io/etcd/etcdutl/v3 v3.5.20 // indirect
	go.etcd.io/etcd/pkg/v3 v3.5.20 // indirect
	go.etcd.io/etcd/raft/v3 v3.5.20 // indirect
	go.etcd.io/etcd/server/v3 v3.5.20 // indirect
	go.etcd.io/etcd/tests/v3 v3.5.20 // indirect
	go.opencensus.io v0.24.0 // indirect
	go.opentelemetry.io/auto/sdk v1.1.0 // indirect
	go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc v0.59.0 // indirect
	go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.59.0 // indirect
	go.opentelemetry.io/otel v1.34.0 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace v1.24.0 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc v1.24.0 // indirect
	go.opentelemetry.io/otel/metric v1.34.0 // indirect
	go.opentelemetry.io/otel/sdk v1.34.0 // indirect
	go.opentelemetry.io/otel/trace v1.34.0 // indirect
	go.opentelemetry.io/proto/otlp v1.1.0 // indirect
	go.uber.org/multierr v1.11.0 // indirect
	go.uber.org/zap v1.27.0 // indirect
	golang.org/x/mod v0.22.0 // indirect
	golang.org/x/oauth2 v0.28.0 // indirect
	golang.org/x/sync v0.12.0 // indirect
	golang.org/x/sys v0.31.0 // indirect
	golang.org/x/text v0.23.0 // indirect
	golang.org/x/tools v0.29.0 // indirect
	google.golang.org/api v0.224.0 // indirect
	google.golang.org/genproto v0.0.0-20250409194420-de1ac958c67a // indirect
	google.golang.org/genproto/googleapis/api v0.0.0-20250409194420-de1ac958c67a // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20250409194420-de1ac958c67a // indirect
	gopkg.in/cheggaaa/pb.v1 v1.0.28 // indirect
	gopkg.in/natefinch/lumberjack.v2 v2.2.1 // indirect
	sigs.k8s.io/yaml v1.4.0 // indirect
)
