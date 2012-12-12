class AddDiagnosisToChildren < ActiveRecord::Migration
  def change
    add_column :children, :diagnosis, :string
  end
end
