#!/bin/bash

# 创建测试数据目录
mkdir -p test

# 生成指定数量的测试文件
for i in {1..10}; do
    # 随机生成数组长度（10到100之间）
    array_length=$((RANDOM % 81 + 10))

    # 生成无序数组，范围从1到100，并使用空格分隔
    random_array=$(shuf -i 1-100 -n $array_length | tr '\n' ' ')

    # 写入文件
    echo "$array_length" > "test/test_data${i}.txt"  # 写入数组长度
    echo "$random_array" >> "test/test_data${i}.txt"  # 写入随机数组

    echo "生成 test/test_data${i}.txt 文件，长度为: $array_length"
done
