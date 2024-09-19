比如当前工作路`C_UBUNTU`
工作目录为

```shell
.
├── build
│   ├── data.i
│   ├── data.o
│   ├── data.s
│   ├── main.i
│   ├── main.o
│   ├── main.out
│   └── main.s
├── include
│   ├── data.h
│   └── datas.h
├── README.md
├── scripts
│   ├── build.sh
│   └── remove.sh
└── src
    ├── data.c
    └── main.c

```
建立文件
```shell
C_ubuntu$ bash ./scripts/build.sh 
```
移除
```shell
C_ubuntu$ bash ./scripts/remove.sh
```