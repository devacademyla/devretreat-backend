require "./reporte"
require "./html_formatter"
require "./plaintext_formatter"

reporte = Reporte.new(HtmlFormatter.new)
reporte.mostrar_reporte

reporte.formatter = PlainTextFormatter.new
reporte.mostrar_reporte