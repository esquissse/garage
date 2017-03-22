class Voiture < ApplicationRecord
  
  belongs_to :personne, required: false
  belongs_to :marque, required: false

  def age
    ((Date.today - date_mise_en_service)/365.25).floor
  end

 
end
