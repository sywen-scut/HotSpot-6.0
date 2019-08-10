#include <stdlib.h>
#include <stdio.h>
#include <fstream>
#include <unistd.h>
#include <string>  
using namespace std;
int main(int argc, char const *argv[])
{
	string fpath = argv[1];
	FILE* fp = fopen(fpath.c_str(),"r");
	if( fp==NULL )
	{
		printf("open failed\n");
		exit(0);
	}
	char line[1000];
	while(true)
	 {
	 	fgets(line, 1000, fp);
	 	if (feof(fp))
	 		break;
	}
	fclose(fp);
	fp = fopen(fpath.c_str(), "w");
	fprintf(fp, "%s", line);
	fclose(fp);
	return 0;
}
