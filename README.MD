# ProtoC Generator Project
# A windows based protobuf code generator

Get started on windows install the following packages with winget:

install make and chocolatey:

`winget install GnuWin32.Make`
`winget install --id=Chocolatey.Chocolatey -v "2.2.2.0" -e`

reload your path:

`$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")`

# install the protobuf compiler using chocolatey

install the protobuf compiler

`choco install protoc`

# ProtoC Generator Project generating golang code:

install golang:

`winget install --id=GoLang.Go  -e`
or
`choco install golang`

install the go code generator and grpc:

`go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.28`
`go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2`

# ProtoC Generator Project generating c++ code:

install vcpkg:

`git clone https://github.com/microsoft/vcpkg`
`.\vcpkg\bootstrap-vcpkg.bat`

install the c++ grpc code generator:

`vcpkg install grpc`

# Generate Code:

make commands:

`make generate-golang-code`
`make generate-c++-code`

