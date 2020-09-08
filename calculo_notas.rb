data = File.open("notas.data").readlines
data.map!{|line| line.split(",")}

def nota_mas_alta(data)
    [data.map { |x| x.to_i }.max]
end

puts nota_mas_alta(data[1])