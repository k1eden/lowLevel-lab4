#include "bSort.h"
#include "swap.h"
// Функция сортировки прямым обменом (метод "пузырька")
void bSort(int *num, int size) {
// Для всех элементов
    for (int i = 0; i < size - 1; i++)
    {
        for (int j = (size - 1); j > i; j--) // для всех элементов после i-ого
        {
            if (num[j - 1] > num[j]) // если текущий элемент меньше предыдущего
                swap(num, j-1, j);
        }
    }
}
