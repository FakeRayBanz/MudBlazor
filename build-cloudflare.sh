#!/bin/sh
curl -sSL https://dot.net/v1/dotnet-install.sh > dotnet-install.sh
chmod +x dotnet-install.sh
./dotnet-install.sh -c 8.0 -InstallDir ./dotnet
./dotnet/dotnet --version
./dotnet/dotnet workload install wasm-tools
./dotnet/dotnet workload list
./dotnet/dotnet run -c Release ./src/MudBlazor.Docs.Compiler/MudBlazor.Docs.Compiler.csproj
./dotnet/dotnet publish ./src/MudBlazor.Docs.Wasm/MudBlazor.Docs.Wasm.csproj -c Release -o output