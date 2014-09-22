class PlainTextFormatter
  def mostrar_reporte(reporte)
    puts "**** #{reporte.titulo} ****"
    reporte.texto.each do |linea|
      puts linea
    end
  end
end