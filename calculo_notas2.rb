data = File.open("notas.data").readlines
data.map!{|line| line.split(",")}

def nota_mas_alta(data)
    result = []
    result << [data[0], data.map { |x| x.to_i }.max]
    result
end

print nota_mas_alta(data[1])