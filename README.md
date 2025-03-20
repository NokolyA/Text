# Ввод 4 слов
words = [input().strip() for _ in range(4)]

# Находим самую "маленькую" и самую "большую" строки
smallest = min(words)
largest = max(words)

# Определяем Unicode-коды последних символов этих строк
code_smallest = ord(smallest[-1])
code_largest = ord(largest[-1])

# Вычисляем "волшебное" число
magic_number = (code_smallest * code_largest) ** 2

# Вывод результата
print(magic_number)
