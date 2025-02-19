
#include "surf2Dread.h"
#include <stdio.h>
#include <iostream>
#include "cuPrintf.cuh"

SurfaceEmulator *d_surf;

__global__ void kernel(SurfaceEmulator **d_s,int n,int m){
	*d_s = new SurfaceEmulator(m,n);
	(*d_s)->write(2,3,3.14);
	double d = (*d_s)->read(2,3);
 	cuPrintf("res  \n");

}


int main(){

  cudaPrintfInit();	
  kernel<<<1,1>>>(&d_surf,3,5);
  cudaDeviceSynchronize();
  cudaPrintfDisplay (stdout, true);
  cudaPrintfEnd ();



}
