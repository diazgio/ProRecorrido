require 'factory_bot_rails'

worker_1 = Worker.create(nombre: 'Pedro')
worker_2 =Worker.create(nombre: 'Mariana')
worker_3 =Worker.create(nombre: 'Felipe')


proyecto_1 = Proyecto.create(nombre_empresa: 'Recorrido')
proyecto_2 = Proyecto.create(nombre_empresa: 'Movistar')
