 
#include <iostream>

#include <math.h>

using namespace std;


double f(double mu, double sigma2, double x)
{

  double prob = (1/sigma2*sqrt(2*3.14))* exp(-.5 * pow((x-mu/sigma2),2));


  return (prob);
}


int main(){
  cout << f(10,4,8)<< endl;
  return 0;
           }
