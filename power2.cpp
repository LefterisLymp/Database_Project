#include <iostream>
#include <fstream>

using namespace std;

int power[27];
int count_bits = 0;

int* create_vector(int N, int &sum)  {/*create_vector returns a vector which indicates the number of each power of 2 int N has*/
	/*sum counts the sum of 1's N has in its binary form*/
	int temp = N;
	count_bits = 0; /*Counts how many digits N has in its binary form*/
	while (temp != 0) {
		sum += temp % 2;
		temp /= 2;
		count_bits++;
	}
	int* ans = new int[count_bits]; /*Initially it will store the number of the powers of */
	temp = N;
	for (int i = 0; i < count_bits; i++) {
		ans[i] = temp % 2;
		temp /= 2;
	}

	return ans;
}

void optimize_vector(int* v, int K) {
	if (K == 0) return;
	int i;
	for (i = 1; i < count_bits; i++) {
		if (v[i]) break;
	}
	if (power[i] <= K) {
		v[i]--;
		v[0] += power[i];
		optimize_vector(v, K - power[i] + 1);
		return;
	}
	v[i]--;
	v[i - 1] += 2;
	optimize_vector(v, K - 1);
	return;
}

void print_list(int N, int K) {
	if (N < K) { /*Impossible*/
		cout << "[]" << endl;
		return;
	}
	else if (N == K) { /*The only way is N 1's*/
		cout << "[" << N << "]" << endl;
		return;
	}
	int sum = 0;
	int* vector = create_vector(N, sum);
	if (K < sum) { /*The least number of power of 2's is the number of non-zero bits of N*/
		cout << "[]" << endl;
		delete[] vector;
		return;
	}
	optimize_vector(vector, K - sum);
	/*Printing*/
	int end_of_list = count_bits - 1; /*end_of_list is the position of the last element*/
	for (int i = end_of_list; i >= 1; i--) {
		if (vector[i]) {
			end_of_list = i;
			break;
		}
	}
	cout << "[";
	for (int i = 0; i < end_of_list; i++)
		cout << vector[i] << ",";
	cout << vector[end_of_list] << "]" << endl;
	delete[] vector;
	return;
}

int main() {
	ifstream infile;
	infile.open("power2.in13");
	for (int i = 0, pow = 1; i < 27; i++, pow *= 2)
		power[i] = pow; /*Creating the global vector with the powers of 2*/
	int T, N, K;
	infile >> T;
	for (int i = 0; i < T; i++) {
		infile >> N >> K;
		print_list(N, K);
	}
	return 0;
}