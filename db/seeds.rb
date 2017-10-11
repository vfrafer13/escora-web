# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Users
User.create(email: 'vfrafer13@gmail.com', password: 'nirvana13', password_confirmation: 'nirvana13', role: 'admin')
User.create(email: 'vfrafer13@gmail.com', password: 'nirvana13', password_confirmation: 'nirvana13', role: 'admin')

# Warehouses
Warehouse.create(name: 'Bodega 1', location: 'Chenku', description: 'Bodega de Arte Moderno')
Warehouse.create(name: 'Bodega 2', location: 'Chichi Suarez', description: 'Bodega de Arte Renacentista')

# Collections
Collection.create(name: 'Barroco', description: 'Piezas barrocas', warehouse: 'Bodega 2')
Collection.create(name: 'Óleo', description: 'Piezas al óleo', warehouse: 'Bodega 2')
Collection.create(name: 'Impresionismo', description: 'Piezas de impresionismo francés', warehouse: 'Bodega 1')

# Works
Work.create(name: 'Las Meninas', author: 'Diego Velázquez', dimensions: '455x670cm', technique: 'Barroco',
            year: '1620', location: 'Anaquel 2', status: 'Buen Estado', situation: 'En exposición',
            situation_since: Time.now.to_datetime, situation_until: Time.now.to_datetime, owner: 'Alejandro Jurado',
            origin: 'Comodato', has_certificate: 1, certified_by: 'Yussel Paredes',
            value: 12134.9, valuer: 'Sofía Vázquez', warehouse: 'Bodega 2', collection: 'Barroco')
Work.create(name: 'La Gioconda', author: 'Leonardo Da Vinci', dimensions: '460x674cm', technique: 'Óleo',
            year: '1421', location: 'Anaquel 1', status: 'Dañada', situation: 'En restauración',
            situation_since: Time.now.to_datetime, situation_until: Time.now.to_datetime, owner: 'Alejandro Jurado',
            origin: 'Compra', has_certificate: 0, value: 12434.9, valuer: 'Carlos Mena', warehouse: 'Bodega 2',
            collection: 'Oleo')
Work.create(name: 'Las Amapolas', author: 'Claude Monet', dimensions: '540x690cm', technique: 'Impresionismo',
            year: '1850', location: 'Anaquel 13', status: 'Buen Estado', situation: 'En exposición',
            situation_since: Time.now.to_datetime, situation_until: Time.now.to_datetime, owner: 'Alejandro Jurado',
            origin: 'Comodato', has_certificate: 0, value: 16134.9, valuer: 'Joshua Flores', warehouse: 'Bodega 1',
            collection: 'Impresionismo')

# Restorations
Restoration.create(reason: 'Daño parcial del marco', responsible: 'Tatiana Serrano',
                   since: Time.now.to_datetime, until: Time.now.to_datetime, work: 'La Gioconda')