module Types
  class MutationType < Types::BaseObject
    field :createuser, mutation: Mutations::CreateUser
    field :userlogin, mutation: Mutations::UserLogin
    field :medicinelist, mutation: Mutations::MedicineList
  end
end
