class AddColumnPersonneIdToVoiture < ActiveRecord::Migration[5.0]
  def change
    add_column :voitures, :personne_id, :integer
  end
end
