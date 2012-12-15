class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :sequence_number
      t.string :name
      t.string :alias
      t.date :dob
      t.string :sex
      t.string :mother_name
      t.string :street
      t.string :string
      t.string :state
      t.string :city

      t.timestamps
    end
  end
end
