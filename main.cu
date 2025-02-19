
#include "surf2Dread.h"
#include <stdio.h>

SurfaceEmulator *d_surf;

__global__ void kernel(SurfaceEmulator **d_s,int n,int m){
	*d_s = new SurfaceEmulator(m,n);
	(*d_s)->write(2,3,3.14);
	double d = (*d_s)->read(2,3);
	printf("res %e \n",d);

}


int main(){

  kernel<<<1,1>>>(&d_surf,3,5);
  cudaDeviceSynchronize();
}
