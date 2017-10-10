# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'vfrafer13@gmail.com', password: 'nirvana13', password_confirmation: 'nirvana13', role: 'admin')
Work.create(name: 'Las Meninas', author: 'Diego Velázquez', dimensions: '455x670cm', technique: 'barroco',
            year: '1620', status: 'Buen Estado', situation: 'En exposición', owner: 'Alejandro Jurado', origin: 'comodato',
            has_certificate: 0, value: 12134.9)
Work.create(name: 'La Gioconda', author: 'Leonardo Da Vinci', dimensions: '460x674cm', technique: 'óleo',
            year: '1421', status: 'Buen Estado', situation: 'En exposición', owner: 'Alejandro Jurado', origin: 'compra',
            has_certificate: 0, value: 12434.9)
Work.create(name: 'Las Amapolas', author: 'Claude Monet', dimensions: '540x690cm', technique: 'impresionismo',
            year: '1850', status: 'Buen Estado', situation: 'En exposición', owner: 'Alejandro Jurado', origin: 'comodato',
            has_certificate: 0, value: 16134.9)