class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.integer :sequence_number
      t.string :first_name
      t.string :last_name
      t.string :alias
      t.date :dob
      t.string :mother_name
      t.string :sex
      t.string :street
      t.string :state
      t.string :city
      t.string :e_name
      t.string :e_alias
      t.string :e_relationship
      t.string :e_street
      t.string :e_state
      t.string :e_city
      t.integer :e_telephone
      t.string :c_clinic
      t.string :c_street
      t.string :c_state
      t.string :c_city
      t.integer :c_telephone
      t.string :d_pediatrician
      t.string :d_clinic
      t.string :d_street
      t.string :d_state
      t.string :d_city
      t.integer :d_telephone

      t.timestamps
    end
  end
end
