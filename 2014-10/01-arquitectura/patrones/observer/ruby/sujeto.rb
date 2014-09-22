module Sujeto
  def initialize
    @observadores = []
  end

  def agregar_observador(observador)
    @observadores << observador
  end

  def borrar_observador(observador)
    @observadores.delete(observador)
  end

  def notificar_observadores
    @observadores.each do |observador|
      observador.update(self)
    end
  end
end