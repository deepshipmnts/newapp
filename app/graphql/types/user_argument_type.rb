module Types
  class UserArgumentType < Types::BaseInputObject
    argument :username, String, required: true
    argument :fullname, String, required: true
    argument :password, String, required: true
    argument :phone, Integer, required: true
    argument :email, String, required: true
    argument :shopname , String, required: true
    argument :shopaddress , String, required: true
    argument :district , String, required: true
    argument :pincode , Integer, required: true
    argument :features , String, required: true
  end
end