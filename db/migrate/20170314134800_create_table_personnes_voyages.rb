class CreateTablePersonnesVoyages < ActiveRecord::Migration[5.0]
  def change
    create_table :personnes_voyages do |t|
      t.integer :personne_id
      t.integer :voyage_id
    end
  end
end
