#include <bits/stdc++.h>
#include <iostream>
#include <cstdlib>
using namespace std;
int main(int argc, char *argv[])
{ 
	int n = 0;
	int N = atoi(argv[1]);
	int i;
	float e_rel;
	float real_pi = 3.1415926535;
	float x, y, distance, pi;

	for (i = 0; i < N; i++){   
		x = (float) rand()/RAND_MAX;
		y = (float) rand()/RAND_MAX;
		distance = x*x + y*y;
		if (distance <= 1)
			n = n + 1; 
}
	pi = float(4 * n) / N;
	e_rel = float(abs(pi - real_pi) / real_pi);
	cout << N << " " << n << " "  << N-n << " "  << pi << " " << e_rel << endl;
	return 0;

}
