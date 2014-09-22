class Empleado
  include Sujeto

  attr_reader :nombre, :titulo
  attr_reader :salario

  def initialize(nombre, titulo, salario)
    super()
    @nombre = nombre
    @titulo = titulo
    @salario = salario
  end

  def salario=(nuevo_salario)
    @salario = nuevo_salario
    notificar_observadores
  end
end