module Types
  class MedicineType < Types::BaseObject
    field :global_medicine_id, Integer, null: true
    field :quantity, Integer, null: true
    field :users_id, Integer, null: true
  end
end