surf: main.cu cuPrintf.cu 
	nvcc -o surf main.cu cuPrintf.cu
clean:
	rm surf	
