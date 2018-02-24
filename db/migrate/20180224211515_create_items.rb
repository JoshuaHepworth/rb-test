class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.integer :item_number
      t.string :sap_number
      t.string :tr_number
      t.string :rb_number
      t.string :name
      t.string :machine
      t.string :material
      t.string :finish
      t.integer :lead_time
      t.string :additional

      t.timestamps
    end
  end
end
