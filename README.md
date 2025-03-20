# Ввод количества книг
n = int(input())

# Считываем книги и разбираем их на части
books = []
for _ in range(n):
    book = input().strip()
    author, title = book.split(', «')
    last_name = author.split()[0]  # Извлекаем фамилию автора
    title = title.rstrip('»')  # Убираем закрывающую кавычку
    books.append((last_name, title))

# Проверяем, отсортирован ли список по фамилиям и названиям
if books == sorted(books):
    print("YES")
else:
    print("NO")
