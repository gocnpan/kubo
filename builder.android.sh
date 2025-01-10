g use 1.22.8
go mod tidy
go mod vendor

sh builder.android.amd.sh

sh builder.android.amd64.sh

sh builder.android.arm.sh

sh builder.android.arm64.sh