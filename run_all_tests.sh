#!/bin/bash

# 检查可执行文件是否存在
if [ ! -f "./main.out" ]; then
    echo "可执行文件不存在，请先编译程序。"
    exit 1
fi

# 遍历 test 目录下的所有 .txt 文件
for testfile in test/*.txt; do
    echo "正在测试文件: $testfile"
    
    # 运行程序并传入当前测试文件
    ./main.out "$testfile"
    
    echo "-----------------------------------"
done
