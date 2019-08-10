#include <stdio.h>
#include <stdlib.h>
int main(int argc, char const *argv[])
{
	double width=0.0015;
	double height=0.002;
	FILE *fp;
	fp=fopen("25p.flp","w");
	for (int i = 0; i < 5; i++)
	{
		for (int j = 0; j < 5; j++)
		{
			fprintf(fp, "P_%d_%d %f %f %f %f\n", i, j, width, height, i*width, j*height );	
			/*fprintf(fp, "R_%d_%d %f %f %f %f\n", i, j, 0.0004, height, width+i*0.002, j*height);*/
		}
	}
	
	fclose(fp);
	char s[100];
	sprintf(s,"%s","~/HotSpot-6.0/tofig.pl 25p.flp  | fig2dev -L ps | ps2pdf - 25p.pdf");
	system(s);
	return 0;

}
//./tofig.pl 64_p_r.flp | fig2dev -L ps | ps2pdf - 64pr.pdf
