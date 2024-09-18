# 1 "../src/main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "../src/main.c"
# 1 "../include/data.h" 1


struct data{
 int x;
 int y;
};

void print_data(struct data elem);
# 2 "../src/main.c" 2
# 1 "../include/datas.h" 1


# 1 "../include/data.h" 1
# 4 "../include/datas.h" 2
struct datas{
 unsigned int len;
 struct data * ptr;
};
# 3 "../src/main.c" 2
int main(){
 struct data a={1,2};
 print_data(a);
 struct datas as;
 return 0;
}
