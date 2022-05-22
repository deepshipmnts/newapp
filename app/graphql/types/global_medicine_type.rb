module Types
  class GlobalMedicineType < Types::BaseObject
    field :name, String, null: true
    field :brand, String, null: true
    field :medicine_id, Integer, null: true
  end
end