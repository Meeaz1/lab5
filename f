#include <stdio.h>

int main() {
    int n;
    int choice;

    do {
        printf("Введіть розмір масиву: ");
        scanf("%d", &n);

        if (n <= 0) {
            printf("Розмір масиву має бути додатнім числом. Будь ласка, спробуйте знову.\n");
        }

        int array[n];
        printf("Введіть елементи масиву:\n");
        for (int i = 0; i < n; i++) {
            scanf("%d", &array[i]);
        }

        printf("Масив після заміни:\n");
        for (int i = 0; i < n; i++) {
            if (array[i] > 0) {
                array[i] = 1;
            } else {
                array[i] = 0;
            }
            printf("%d ", array[i]);
        }
        printf("\n");

        printf("\nМеню:\n");
        printf("1. Продовжити\n");
        printf("2. Закінчити\n");
        printf("Виберіть опцію: ");
        scanf("%d", &choice);

        if (choice != 1) {
            printf("Програма завершена.\n");
        }

    } while (choice == 1);

    return 0;
}
