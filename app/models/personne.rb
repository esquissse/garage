class Personne < ApplicationRecord

  has_many :voitures
  has_and_belongs_to_many :voyages

  def age
    ((Date.today - date_naissance)/365.25).floor
  end

  def nom_complet
    prenom + " " + nom
  end

end
