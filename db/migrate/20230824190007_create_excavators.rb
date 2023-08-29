class CreateExcavators < ActiveRecord::Migration[6.1]
  def change
    create_table :excavators do |t|
      t.string :company_name
      t.text :address
      t.boolean :crew_on_site
      t.references :ticket, index: true
      t.timestamps
    end
  end
end
