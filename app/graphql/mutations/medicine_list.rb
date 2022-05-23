class Mutations::MedicineList < Mutations::BaseMutation

  argument :token, String, required: true
  argument :globalMedicineId, Integer, required: true
  argument :quantity, Integer, required: true

  field :res, Types::MedicineType 

  def resolve(**args)
    medicine = Medicine.find_or_initialize_by(user_id: Token.verify(args[:token]).id, global_medicine_id: args[:globalMedicineId])
    medicine.quantity = args[:quantity]
    medicine.save!
    {res:medicine}
  end
end