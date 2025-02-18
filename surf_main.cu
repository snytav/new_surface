i///// https://forums.developer.nvidia.com/t/can-i-use-operator-new-in-device-code/37594ii

#include "surf2Dread.h"

SurfaceEmulater d_surf;

__global__ void kernel(SurfaceEmulator **d_s,in n,int m){
	*d_s = new SurfaceEmulator(m,n);

}


int main(){

  kernel<<<1,1>>>();
  cudaDeviceSynchronize();
}
