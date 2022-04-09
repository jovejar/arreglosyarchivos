def chart(data)
    data.each { |l| puts "| #{'**' * l}" }
    n = data.max
    puts "#{' >' + '-' * 2 * n}"
    n.times do |i| i += 1 
        print " #{i}"
    end
    print "\n"
end

chart([5, 3, 2, 5, 10])
