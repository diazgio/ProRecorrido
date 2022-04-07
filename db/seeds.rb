require 'factory_bot_rails'

Worker.delete_all
Proyecto.delete_all

worker_1 = Worker.create(nombre: 'Pedro')
worker_2 =Worker.create(nombre: 'Mariana')
worker_3 =Worker.create(nombre: 'Felipe')


proyecto_1 = Proyecto.create(nombre_empresa: 'Recorrido')
proyecto_2 = Proyecto.create(nombre_empresa: 'Movistar')

contrato_1 = Contrato.create(proyecto_id: proyecto_1.id, duration: 50, start_hour: [18,18,18,18,18,14,14], end_hour: [0,0,0,0,0,0,0])

ContratoWorker.create(contrato_id: contrato_1.id, worker_id: worker_1.id)
ContratoWorker.create(contrato_id: contrato_1.id, worker_id: worker_2.id)
ContratoWorker.create(contrato_id: contrato_1.id, worker_id: worker_3.id)

7.times do |t|
  Disponibilidad.create(
    hora: contrato_1.start_hour[t],
    fecha: t,
    worker_id: worker_1.id,
    contrato_id: contrato_1.id,
    valor: true,
    semana: 14,
    year: 2022,
    confirmed: true
  )
end

7.times do |t|
  Disponibilidad.create(
    hora: contrato_1.start_hour[t] + 1,
    fecha: t,
    worker_id: worker_1.id,
    contrato_id: contrato_1.id,
    valor: true,
    semana: 14,
    year: 2022,
    confirmed: true
  )
end

7.times do |t|
  Disponibilidad.create(
    hora: contrato_1.start_hour[t] + 2,
    fecha: t,
    worker_id: worker_1.id,
    contrato_id: contrato_1.id,
    valor: true,
    semana: 14,
    year: 2022,
    confirmed: true
  )
end