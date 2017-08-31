# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create([{name: 'auto'},{name: 'camioneta'},{name: 'agricola'},{name: 'comerciales'}])

User.create(name: 'javier',email: 'javier@correo.cl')
User.create(name: 'esteban',email: 'esteban@correo.cl')
User.create(name: 'rodrigo',email: 'rodrigo@correo.cl')

Item.create(serie: 101213,name: 'neumatico momo',size: 70,description: 'rueda para auto suv',category: Category.find_by(name: 'auto'),user: User.find_by(name: 'Rodrigo'))
Item.create(serie: 101230,name: 'neumatico goodyear',size: 70,description: 'rueda para auto suv',category: Category.find_by(name: 'auto'),user: User.find_by(name: 'Esteban'))
Item.create(serie: 102346,name: 'neumatico momo',size: 70,description: 'rueda para auto suv',category: Category.find_by(name: 'auto'),user: User.find_by(name: 'Rodrigo'))
Item.create(serie: 101278,name: 'neumatico goodyear',size: 80,description: 'rueda para camioneta ligera',category: Category.find_by(name: 'camioneta'),user: User.find_by(name: 'Javier'))
Item.create(serie: 101287,name: 'neumatico goodyear',size: 80,description: 'rueda para camioneta ligera',category: Category.find_by(name: 'camioneta'),user: User.find_by(name: 'Esteban'))
Item.create(serie: 101293,name: 'neumatico momo',size: 100,description: 'rueda para tractor',category: Category.find_by(name: 'agricola'),user: User.find_by(name: 'Esteban'))
Item.create(serie: 101324,name: 'neumatico pirelli',size: 90,description: 'rueda para camion 3/4',category: Category.find_by(name: 'comerciales'),user: User.find_by(name: 'Rodrigo'))
Item.create(serie: 101334,name: 'neumatico goodyear',size: 90,description: 'rueda para camion 3/4',category: Category.find_by(name: 'comerciales'),user: User.find_by(name: 'Javier'))
Item.create(serie: 101364,name: 'neumatico momo',size: 90,description: 'rueda para camion 3/4',category: Category.find_by(name: 'comerciales'),user: User.find_by(name: 'Esteban'))
