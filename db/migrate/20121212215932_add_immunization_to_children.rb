class AddImmunizationToChildren < ActiveRecord::Migration
  def change
    add_column :children, :immunization, :string
  end
end
