class CreateGlobalMedicines < ActiveRecord::Migration[6.1]
  def change
    create_table :global_medicines do |t|
      t.string :name
      t.string :brand

      t.timestamps
    end
  end
end
