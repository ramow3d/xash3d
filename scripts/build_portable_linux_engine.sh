# Build engine

mkdir -p build && cd build/
export CC="ccache gcc"
export CXX="ccache g++"
export CFLAGS="-m32"
export CXXFLAGS="-m32"
cmake \
	-DCMAKE_PREFIX_PATH=$TRAVIS_BUILD_DIR/sdl2-linux/usr/local \
	-DXASH_DOWNLOAD_DEPENDENCIES=yes \
	-DXASH_STATIC=ON \
	-DXASH_DLL_LOADER=ON \
	-DXASH_VGUI=ON \
	-DMAINUI_USE_STB=ON \
	-DCMAKE_BUILD_TYPE=RelWithDebInfo ../
make -j2 VERBOSE=1
cp engine/xash3d mainui/libxashmenu.so vgui_support/libvgui_support.so vgui_support/vgui.so ../scripts/xash3d.sh .
