require "./sujeto"
require "./empleado"
require "./nomina"
require "./sunat"

renzo = Empleado.new('Renzo Patterns', 'Desarrollador', 30000)

nomina = Nomina.new
renzo.agregar_observador(nomina)

sunat = Sunat.new
renzo.agregar_observador(sunat)

renzo.salario=35000