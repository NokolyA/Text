# Ввод количества названий классов
n = int(input())

# Допустимые значения
valid_numbers = set(str(i) for i in range(10))
valid_letters = set('АБВГДЕЖЗИЙКЛМНОП')

# Проверка каждого названия
for _ in range(n):
    class_name = input().strip()
    
    if len(class_name) == 2 and class_name[0] in valid_numbers and class_name[1] in valid_letters:
        print("YES")
    else:
        print("NO")
