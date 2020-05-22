// This program generates SQL statements for older_prices table
#include <iostream>
#include <iomanip>

using namespace std;

int month_days (int months) {
    int ans = 0;
    switch(months) {
        case 1:
        case 3:
        case 5:
        case 7:
        case 8:
        case 10:
        case 12: ans = 31; break;
        case 4:
        case 6:
        case 9:
        case 11: ans = 30; break;
        case 2: ans = 28; break;  
    }
    return ans;
}    

int main () {
    long long int barcode;
    cin >> barcode;
    double starting_price;
    cin >> starting_price;
    int year = 2020;
    int month = 5;
    for (int i = 0; i < 36; i++) {
        if (month == 0) {year--; month = 12;}
        cout << "insert into older_prices values (" << barcode << ", '" << year << "-" << month << "-1', '" << year << "-" << month << "-" << month_days(month) << "', ";
	cout << std::setprecision(2) << fixed << (starting_price+(starting_price*0.1)*(month-5)0.02*(2020-year)) << ");" << endl; 
        month--;
    }
    return 0;
}