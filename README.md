# Ввод трех слов
words = [input().strip() for _ in range(3)]

# Сортировка по возрастанию
words.sort()

# Вывод результата
print(' '.join(words))
