import re

# Ввод строк
s1 = input()
s2 = input()

# Удаляем все небуквенные символы и приводим к нижнему регистру
cleaned_s1 = re.sub(r'[^a-zA-Zа-яА-Я]', '', s1).lower()
cleaned_s2 = re.sub(r'[^a-zA-Zа-яА-Я]', '', s2).lower()

# Сравниваем строки
if cleaned_s1 == cleaned_s2:
    print("YES")
else:
    print("NO")
