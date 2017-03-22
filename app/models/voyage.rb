class Voyage < ApplicationRecord
  has_and_belongs_to_many :personnes

  def voyage
  	depart + " - " + arrivee
  end
  
end
