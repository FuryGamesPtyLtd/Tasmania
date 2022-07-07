#!/bin/bash

rm -rf build
rm -rf install
mkdir build
cd build

CXXFLAGS="-fPIC -nostdinc++ -I/opt/unreal/UnrealEngine/Engine/Source/ThirdParty/Unix/LibCxx/include -I/opt/unreal/UnrealEngine/Engine/Source/ThirdParty/Unix/LibCxx/include/c++/v1" cmake ../protobuf-21.2/ -Dprotobuf_BUILD_TESTS=OFF -Dprotobuf_DISABLE_RTTI=ON -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt/protobuf/21.2/install -DCMAKE_C_COMPILER=/opt/unreal/UnrealEngine/Engine/Extras/ThirdPartyNotUE/SDKs/HostLinux/Linux_x64/v20_clang-13.0.1-centos7/x86_64-unknown-linux-gnu/bin/clang -DCMAKE_CXX_COMPILER=/opt/unreal/UnrealEngine/Engine/Extras/ThirdPartyNotUE/SDKs/HostLinux/Linux_x64/v20_clang-13.0.1-centos7/x86_64-unknown-linux-gnu/bin/clang++ -Dprotobuf_BUILD_PROTOC_BINARIES=OFF

make install VERBOSE=1
