def proyection(filename)
    file = File.open(filename,"w")
        input = open('ventas_base.db').read.split(',').map { |str| str.to_f }
        sem_1 = input.slice(0, input.length/2)
        sem_2 = input.slice(input.length/2, input.length)
        sem_1_acum = sem_1.first(3).map { |i| i * 1.1 }.map { |r| r.round(2) }.concat sem_1.last(3)
        sem_2_acum = sem_2.first(3).concat sem_2.last(3).map { |j| j * 1.2 }.map { |s| s.round(2) }
        sem_1_total = 0
        sem_1_acum.each { |m| sem_1_total += m }
        sem_2_total = 0
        sem_2_acum.each { |n| sem_2_total += n }
        file.write "// Estos valores son referenciales\n"
        file.write sem_1_total 
        file.write "\n"
        file.write sem_2_total
    file.close
end

proyection("resultados.data")
print open("resultados.data").read
print "\n"
