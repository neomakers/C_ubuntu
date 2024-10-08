#include <stdio.h>
#include <stdlib.h>
#include "read_from_test.h"
int main(int argc, char *argv[]) {
	
    if (argc < 2) {
        printf("请提供测试数据文件名。\n");
        return 1;
    }

    int n;
    
    // 调用封装函数读取数组
    int *arr = read_array_from_file(argv[1], &n);
    if (arr == NULL) {
        return 1;  // 如果文件打开失败，直接退出
    }

    // 输出数组元素
    printf("无序数组: ");
    for (int i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");

    // 释放内存
    free(arr);
    return 0;
}
