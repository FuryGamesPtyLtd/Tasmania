rmdir /S build
rmdir /S install
mkdir build
cd build
cmake ..\protobuf-21.2 -G "NMake Makefiles" -Dprotobuf_BUILD_TESTS=OFF -Dprotobuf_DISABLE_RTTI=ON -DCMAKE_INSTALL_PREFIX=\opt\protobuf\21.2\install -DCMAKE_BUILD_TYPE=Release -Dprotobuf_MSVC_STATIC_RUNTIME=OFF 
nmake install

