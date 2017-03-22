contenu = File.read('db/voitures.xml')
h = Hash.from_xml(contenu)

h["voitures"].each do |voiture|
  # on créé d'abord la marque et on conserve la référence pour la voiture
  m = Marque.where(libelle: voiture["marque"]["nom"]).first_or_create

  v = Voiture.new
  v.immatriculation = voiture["immatriculation"]
  v.couleur = voiture["couleur"]
  v.modele = voiture["modele"]
  v.marque_id = m.id
  v.save
  
end
