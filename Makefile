# "���������" ����
.PHONY: all clean

# �������� �����, ����������� ��� ������ ����������
OBJS= bSort.c  \
      swap.c

# ���������� ����������
AR = riscv64-unknown-elf-ar.exe
CC = riscv64-unknown-elf-gcc.exe

# ���� ����������
MYLIBNAME = bSortlib.a

# ��������� ����������
CFLAGS= -O1

# ���������� ����� ������� ������ � ������� ��������
INCLUDES+= -I .

# Make ������ ������ ����� *.h � *.c � ������� ����������
vpath %.h .
vpath %.c .

# ���������� ���������� ����� �� ��������� ������
# $< = %.c
# $@ = %.o
%.o: %.c
	$(CC) -MD $(CFLAGS) $(INCLUDES) -c $< -o $@

# ����� ������� ���� "all", ��������� ��������� ����������
all: $(MYLIBNAME)

# $^ = (bSort.o, swap.o)
$(MYLIBNAME): bSort.o swap.o
	$(AR) -rsc $@ $^
