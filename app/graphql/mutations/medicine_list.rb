class Mutations::MedicineList < Mutations::BaseMutation

  argument :global_medicine_id, ID, required: true
  argument :quantity, Integer, required: true

  type Types::MedicineType

  def resolve(**args)
    medicine = Medicine.find_or_inialize_by(user_id: @current_user.id, global_medicine_id: args[:global_medicine_id])
    medicine.quantity = args[:quantity]
    medicine.save!
  end
end