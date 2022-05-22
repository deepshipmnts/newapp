# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

GlobalMedicine.create([

                        {

                          name:"dolo",

                          brand:"dolo"

                        }

                      ])



User.create([

              {

                fullname: "saumya",

                username: "saumya1204",

                passwords: "1234",

                phone: 9638590,

                email: "deep@gmail.com",

                shopname: "dp",

                shopaddress: "Mehsana",

                district: "Mehsana",

                pincode: "384002",

                features: "available"

              }

            ])





Medicine.create([

                  {

                    global_medicine_id:2,

                    users_id:2,

                    quantity:20

                  },
                  {

                    global_medicine_id:1,

                    users_id:2,

                    quantity:10

                  }

                ])