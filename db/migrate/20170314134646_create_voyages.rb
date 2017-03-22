class CreateVoyages < ActiveRecord::Migration[5.0]
  def change
    create_table :voyages do |t|
      t.string :depart
      t.string :arrivee

      t.timestamps
    end
  end
end
