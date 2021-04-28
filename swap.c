#include "swap.h"
void swap(int *num, int first, int second) {
    int temp = num[first]; // меняем их местами
    num[first] = num[second];
    num[second] = temp;
}