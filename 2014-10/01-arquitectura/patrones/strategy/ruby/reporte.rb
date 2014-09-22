class Reporte
  attr_reader :titulo, :texto
  attr_accessor :formatter

  def initialize(formatter)
    @titulo = 'Reporte mensual'
    @texto = ['Todo está yendo', 'muy bien.']
    @formatter = formatter
  end

  def mostrar_reporte
    @formatter.mostrar_reporte(self)
  end
end