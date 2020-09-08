data = File.open("ventas_base.db").read.split(",")

array = []

data.each do |e|
    array.push(e.to_i)
end

def simulacion(arr, percent1, percent2)
    arr1 = arr[0..5].sum
    arr2 = arr[6..1].sum
    ((arr1 * percent1) + (arr2 * percent2)).floor(2)
end

sim1 = simulacion(array, 1.1, 1)
sim2 = simulacion(array, 1, 1.2)

output = File.open("resultados.data", "w")

output.write("Las ventas totales dado que en la primera mitad del semestre se vende un 10% más son: #{sim1}\n")
output.write("Las ventas totales dado que en la segunda mitad del semestre se vende un 20% más son: #{sim2}\n")
