# frozen_string_literal: true

require 'factory_bot_rails'

Worker.create(nombre: 'Pedro')
Worker.create(nombre: 'Mariana')
Worker.create(nombre: 'Felipe')

Proyecto.create(nombre_empresa: 'Recorrido')
Proyecto.create(nombre_empresa: 'Movistar')
