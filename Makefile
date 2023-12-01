ifeq ($(OS),Windows_NT)
SHELL := powershell.exe
.SHELLFLAGS := -NoProfile -Command
endif

generate-golang-code:
	@echo "Generating golang code..."
	@protoc --go_out=go --go_opt=paths=source_relative --go-grpc_out=./go --go-grpc_opt=paths=source_relative ./Messages.proto

generate-c++-code:
	@echo "Generating c++ code..."
	@protoc --grpc_out=./cpp --plugin=protoc-gen-grpc="vcpkg\installed\x64-windows\tools\grpc\grpc_cpp_plugin.exe" ./Messages.proto