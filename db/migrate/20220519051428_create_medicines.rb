class CreateMedicines < ActiveRecord::Migration[6.1]
  def change
    create_table :medicines do |t|
      t.belongs_to :user ,index: true
      t.belongs_to :global_medicine ,index: true
      t.integer :quantity

      t.timestamps
    end
  end
end
