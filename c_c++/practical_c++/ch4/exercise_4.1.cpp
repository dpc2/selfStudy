#include <iostream>
#include <vector>

using namespace std;


double max_value(vector<double> input_vector){

    double my_max;

    for (double iterable: input_vector){
        if (my_max < iterable){
            my_max = iterable;
        }
    }

    return my_max;
}

int main(){

    vector<double> temperature_list = { 12.3, -4.5, 21.0, 11.7, -0.4 };

    cout << max_value(temperature_list) << endl;

    return 0;
}