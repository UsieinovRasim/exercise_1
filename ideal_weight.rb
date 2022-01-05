puts "Добрый вечер!"

puts "Вы не подскажете, как к Вам можно обращаться?"
name = gets.chomp

puts "Простите, а какой у Вас рост?"
height = gets.chomp.to_i

ideal_weight = (height - 110) * 1.15

if ideal_weight >= 0
  puts "#{name}, Ваш вес #{ideal_weight.round(2)} кг"

else
  puts "Ваш вес уже оптимальный"
end
