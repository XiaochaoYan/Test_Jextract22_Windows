#include <math.h>
#include "point.h"
#include <stdio.h>

double distance(struct Point2d p1) 
{
    return sqrt(pow(p1.x,2) + pow(p1.y,2));
}

int main()
{
    struct Point2d p1;
    p1.x = 3;
    p1.y = 4;

    printf("%lf",distance(p1));

    return 0;

}