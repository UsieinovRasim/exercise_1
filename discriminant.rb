print "Чему равен коэффициент 'a'?: "
a = gets.chomp.to_f

print "Чему равен коэффициент 'b'?: "
b = gets.chomp.to_f

print "Чему равен коэффициент 'c'?: "
c = gets.chomp.to_f

puts 'Дискриминант равен: b**2 - 4ac'
d = b**2 - 4 * a * c

if d > 0
    math_sqrt = Math.sqrt(d)
    x_1 = ((- b + math_sqrt) / 2 * a).round(2)
    x_2 = ((- b - math_sqrt) / 2 * a).round(2)

    puts "Коэффициент x1 = #{x_1}"
    puts "Коэффициент x2 = #{x_2}"
    puts "Дискриминант равен: #{d}"

elsif d == 0
    x_1 = ((- b) / 2 * a).round(2)

    puts "Коэффициент x = #{x_1}"
    puts "Дискриминант равен: #{d}"

else
    puts 'Корней нет'

end
