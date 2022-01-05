def sides(gip, kat_1, kat_2)
  gip_2 = (gip**2).round(2)
  sum_sqr = (kat_1**2 + kat_2**2).round(2)
  { gip: gip, gip_2: gip_2, sum_sqr: sum_sqr }
end

print 'Введите сторону треугольника A: '
a = gets.chomp.to_f

print 'Введите сторону треугольника B: '
b = gets.chomp.to_f

print 'Введите сторону треугольника C: '
c = gets.chomp.to_f

hash = if a > b && a > c
         sides(a, b, c)
       elsif b > a && b > c
         sides(b, a, c)
       else
         sides(c, a, b)
       end

if a == b && b == c
  puts 'Треугольник является равносторонним'
end

if a == b || a == c || b == c
  puts 'Треугольник является равнобедренным'
end

puts 'Треугольник является прямоугольным' if hash[:gip_2] == hash[:sum_sqr]
puts "Гипотенуза равна #{hash[:gip]}"
