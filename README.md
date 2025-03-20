# Ввод данных
day = int(input())
current_weight = float(input())

# Исходные данные
start_weight = 100
target_weight = 88
total_days = 60

# Суточная норма похудения
daily_loss = (start_weight - target_weight) / total_days

# Целевой вес на текущий день
target_today = start_weight - daily_loss * day

# Проверка выполнения плана
if current_weight <= target_today:
    print("Все идет по плану")
else:
    print("Что-то пошло не так")

# Вывод информации о текущем дне
print(f"#{day} ДЕНЬ: ТЕКУЩИЙ ВЕС = {current_weight} кг, ЦЕЛЬ по ВЕСУ = {target_today:.1f} кг")
