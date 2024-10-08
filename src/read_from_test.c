
#include<stdio.h>
#include<stdlib.h>
// 封装函数，负责打开文件并读取数组
int* read_array_from_file(int argc, char *argv[], int *n) {
    
    if (argc < 2) {
        printf("请提供测试数据文件名。\n");
        return NULL;
    }

    char * filename=argv[1];
    FILE *file = fopen(filename, "r");
    if (file == NULL) {
        printf("无法打开文件 %s\n", filename);
        return NULL;
    }

    // 读取数组长度
    fscanf(file, "%d", n);
    printf("数组长度: %d\n", *n);

    // 分配内存存储数组
    int *arr = (int *)malloc((*n) * sizeof(int));

    // 读取数组元素
    for (int i = 0; i < *n; i++) {
        fscanf(file, "%d", &arr[i]);
    }

    // 关闭文件
    fclose(file);
    return arr;
}
