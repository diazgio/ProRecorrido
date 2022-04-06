require 'factory_bot_rails'

Worker.delete_all

Worker.create(nombre: 'Pedro')
Worker.create(nombre: 'Mariana')
Worker.create(nombre: 'Felipe')
