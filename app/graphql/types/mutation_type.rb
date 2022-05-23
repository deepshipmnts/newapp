module Types
  class MutationType < Types::BaseObject
    field :createuser, mutation: Mutations::CreateUser
    field :userlogin, mutation: Mutations::UserLogin
    field :medicinelist, mutation: Mutations::MedicineList
    field :globalmedicineadd, mutation: Mutations::GlobalMedicineAdd
  end
end
