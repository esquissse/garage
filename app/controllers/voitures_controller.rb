class VoituresController < ApplicationController
  before_action :set_voiture, only: [:show, :edit, :update, :destroy]

  # GET /voitures
  # GET /voitures.json
  def index
    @voitures = Voiture.all
  end

  # GET /voitures/1
  # GET /voitures/1.json
  def show
  end

  # GET /voitures/new
  def new
    @voiture = Voiture.new
  end

  # GET /voitures/1/edit
  def edit
  end

  # POST /voitures
  # POST /voitures.json
  def create
    @voiture = Voiture.new(voiture_params)

    respond_to do |format|
      if @voiture.save
        format.html { redirect_to @voiture, notice: 'Voiture was successfully created.' }
        format.json { render :show, status: :created, location: @voiture }
      else
        format.html { render :new }
        format.json { render json: @voiture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /voitures/1
  # PATCH/PUT /voitures/1.json
  def update
    respond_to do |format|
      if @voiture.update(voiture_params)
        format.html { redirect_to @voiture, notice: 'Voiture was successfully updated.' }
        format.json { render :show, status: :ok, location: @voiture }
      else
        format.html { render :edit }
        format.json { render json: @voiture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voitures/1
  # DELETE /voitures/1.json
  def destroy
    @voiture.destroy
    respond_to do |format|
      format.html { redirect_to voitures_url, notice: 'Voiture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def recherche
    @recherche = Voiture.where(immatriculation: params[:immatriculation]).first
    respond_to do |format|
      if @recherche
        format.html { redirect_to @recherche, notice: 'Voiture trouvée.' }
        format.json { render :recherche, status: :ok, location: @recherche}
      else
        format.html { redirect_to voitures_url}
        format.json { render json: @recherche.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voiture
      @voiture = Voiture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.https://www.google.fr/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&ved=0ahUKEwi6vd2Oh9bSAhUCshQKHWlxC94QFggcMAA&url=http%3A%2F%2Fblog.bigbinary.com%2F2016%2F02%2F29%2Frails-5-improves-redirect_to_back-with-redirect-back.html&usg=AFQjCNGl7Kn1bOUR9ZG3-_pncMjvI6gc0w&sig2=4yviC1nkcslSAlHmNd2fPQ
    def voiture_params
      params.require(:voiture).permit(:immatriculation, :couleur, :modele, :date_mise_en_service, :personne_id, :marque_id)
    end
end
