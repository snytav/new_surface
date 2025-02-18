
#include "surf2Dread.h"

SurfaceEmulator *d_surf;

__global__ void kernel(SurfaceEmulator **d_s,int n,int m){
	*d_s = new SurfaceEmulator(m,n);

}


int main(){

  kernel<<<1,1>>>(&d_surf,3,5);
  cudaDeviceSynchronize();
}
