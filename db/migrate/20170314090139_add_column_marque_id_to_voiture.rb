class AddColumnMarqueIdToVoiture < ActiveRecord::Migration[5.0]
  def change
    add_column :voitures, :marque_id, :integer
  end
end
