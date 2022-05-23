class Mutations::GlobalMedicineAdd < Mutations::BaseMutation

  argument :name, String, required: true
  argument :brand, String, required: true

  field :res, Types::GlobalMedicineType 

  def resolve(**args)
    medicine = GlobalMedicine.find_or_initialize_by(name: args[:name] ,brand: args[:brand])
      medicine.save!
    {res:medicine}
  end
end