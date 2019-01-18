#Ejercicio 1
arreglo = [1,2,3,9,1,4,5,2,3,6,6]
puts arreglo.first
puts arreglo.last
arreglo.each { |numeros| puts numeros }
arreglo.each_with_index { |numeros, indice| puts "Numero: #{numeros}, Indice: #{indice}"}
arreglo.each_with_index { |numeros, indice| puts numeros if indice.even? }
puts '-----------------------------------------------------'
#Ejercicio 2
a = [1,2,3,9,1,4,5,2,3,6,6]
b = []
a.pop
print "#{a}\n"
a.shift
print "#{a}\n"
a.delete(4)
print "#{a}\n"
a.pop
print "#{a}\n"
b.push(9,4,3,2,1,3,2)
print "#{b}\n"
b.pop
print"#{b}\n"
puts '-----------------------------------------------------'
#Ejercicio 3
a = [1,2,3,9,1,4,5,2,3,6,6]
suma = 0
a.delete_if { |numeros| numeros.even? }
print "#{a}\n"
a.each do |numeros|
  suma = suma + numeros
end
puts suma
puts suma / a.count.to_f

a.map! { |numeros| numeros += 1}
print "#{a}\n"
puts '-----------------------------------------------------'
#Ejercicio 4
 products = %w(Producto1 Producto2 Producto3 Producto4)
 html = ''
products.each do |i|
   html += "<div class='product'><p>Producto#{i}</p></div>\n"
end
puts html
puts '-----------------------------------------------------'
#Ejercicio 5
products = %w(Producto1 Producto2 Producto3 Producto4)
prices = %w[1000 2000 1500 950]
html = ''
var = 0
products.each do |i|
  html += "<div class='product'><p>Producto#{i}</p>"
  html += "<p>#{prices[var]}</p></div>\n"
  var += 1
end
puts html
puts '-----------------------------------------------------'
#Ejercicio 6
a = [1,2,3,9,12,31, "domingo"]
b = ["lunes", "martes", "miércoles", "jueves", "viernes", "sábado", "domingo"]

a.concat (b)
print "#{a}\n"

a = [1,2,3,9,12,31, "domingo"]
b = ["lunes", "martes", "miércoles", "jueves", "viernes", "sábado", "domingo"]

print "#{a | b}\n"
print "#{a & b}\n"
print a.zip(b)
