#include <stdio.h>
#include <stdlib.h>
int main(int argc, char const *argv[])
{
	/*double width=0.0016;
	double height=0.002;*/
	FILE *fp;
	fp=fopen("64p.ptrace","w");
	for (int i = 0; i < 8; i++)
	{
		for (int j = 0; j < 8; j++)
		{
			// fprintf(fp, "P_%d_%d \t", i, j, width, height, i*0.002, j*height );	
			// fprintf(fp, "R_%d_%d %f %f %f %f\n", i, j, 0.0004, height, width+i*0.002, j*height);
			fprintf(fp, "P_%d_%d \t", i, j);
		}
	}
	fprintf(fp, "\n");
	for (int i = 0; i < 500; ++i)
	{
		for (int i = 0; i < 64; ++i)
			fprintf(fp, "%d\t", 1);
		fprintf(fp, "\n");
	}
	
	fclose(fp);
	return 0;
}
//./tofig.pl 64_p_r.flp | fig2dev -L ps | ps2pdf - 64pr.pdf
