data = open('notas.data').readlines.map!{ |l| l.split(",") }

def notas_mas_alta(nota)
    alta = []
    nota.each { |n| alta.push(n.map { |m| m.to_i}.max) }
    return alta
end

print notas_mas_alta(data)
print "\n"
