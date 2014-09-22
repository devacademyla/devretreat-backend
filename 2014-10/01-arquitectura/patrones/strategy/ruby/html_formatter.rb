class HtmlFormatter
  def mostrar_reporte(reporte)
    puts '<html>'
    puts '  <head>'
    puts "    <title>#{reporte.titulo}</title>"
    puts '  </head>'
    puts '  <body>'
    reporte.texto.each do |linea|
      puts "    <p>#{linea}</p>"
    end
    puts '  </body>'
    puts '</html>'
  end
end