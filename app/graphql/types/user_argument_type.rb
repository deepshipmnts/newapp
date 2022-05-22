module Types
  class UserArgumentType < Types::BaseObject
    field :username, String, null: true
    field :fullname, String, null: true
    field :passwords, String, null: true
    field :phone, Integer, null: true
    field :email, String, null: true
    field :shopename , String, null: true
    field :shopaddress , String, null: true
    field :district , String, null: true
    field :pincode , Integer, null: true
    field :features , String, null: true
  end
end