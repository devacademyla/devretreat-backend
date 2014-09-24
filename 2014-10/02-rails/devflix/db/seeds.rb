puts "Seed Serie"
Serie.delete_all

Serie.create( nombre: "Bates Motel",
              temporadas: 2,
              descripcion: "Bates Motel retrata la vida de un joven de aspecto frágil llamado Norman Bates y de su posesiva madre Norma, unos años antes de los acontecimientos narrados en Psicosis.",
              imagen: "assets/images/bates-motel.jpg",
              en_transmision: true)