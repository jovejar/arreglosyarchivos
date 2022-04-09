data = open('notas.data').readlines.map!{ |l| l.split(",") }

def nota_mas_alta(nota)
    nota.map { |n| n.to_i }.max
end

puts "nota_mas_alta(data[0]) => ".concat("#{nota_mas_alta(data[0])}")
puts "nota_mas_alta(data[1]) => " + "#{nota_mas_alta(data[1])}"
