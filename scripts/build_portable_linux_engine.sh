# Build engine

mkdir -p build && cd build/
export CFLAGS="-m32"
export CXXFLAGS="-m32"
cmake \
	-DXASH_DEDICATED=ON \
	-DXASH_VGUI=ON \
	-DCMAKE_BUILD_TYPE=RelWithDebInfo ../
make -j2 VERBOSE=1
cp engine/xash3d mainui/libxashmenu.so vgui_support/libvgui_support.so vgui_support/vgui.so ../scripts/xash3d.sh .
