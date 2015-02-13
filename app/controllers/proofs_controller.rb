class ProofsController < ApplicationController
  before_action :set_proof, only: [:show, :edit, :update, :destroy]
  
  
  def generate_token
    self.token = loop do
      random_token = SecureRandom.urlsafe_base64(nil, false)
      break random_token unless Proof.exists?(token: random_token)
    end
  end

  def geraProva
      
      
    selecionaProva = Proof.last
    selecionaNumeroQuestoes = selecionaProva.questionsNumber.to_i
    selecionaQuestoes = selecionaProva.subject.issues.order_by_rand.limit(selecionaNumeroQuestoes).all
    selecionaQuestoes.each do |questao|
      @novaProva = ProofIssue.new
      professor = selecionaProva.id
      questao = questao.id
      @novaProva.proof_id=professor
      @novaProva.issue_id=questao
      @novaProva.save
    end
  end
        
        
 

  # GET /proofs
  # GET /proofs.json
  def index
    @proofs = Proof.all
  end

  # GET /proofs/1
  # GET /proofs/1.json
  def show
  end

  # GET /proofs/new
  def new
    @proof = Proof.new
  end

  # GET /proofs/1/edit
  def edit
  end

  # POST /proofs
  # POST /proofs.json
  def create
    @proof = Proof.new(proof_params)

    respond_to do |format|
    
      if @proof.save
      
          geraProva
          
        
        format.html { redirect_to @proof, notice: 'Proof was successfully created.' }
        format.json { render :show, status: :created, location: @proof }
      else
        format.html { render :new }
        format.json { render json: @proof.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proofs/1
  # PATCH/PUT /proofs/1.json
  def update
    respond_to do |format|
      if @proof.update(proof_params)
        
        geraProva
        
        format.html { redirect_to @proof, notice: 'Proof was successfully updated.' }
        format.json { render :show, status: :ok, location: @proof }
      else
        format.html { render :edit }
        format.json { render json: @proof.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proofs/1
  # DELETE /proofs/1.json
  def destroy
    @proof.destroy
    respond_to do |format|
      format.html { redirect_to proofs_url, notice: 'Proof was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proof
      @proof = Proof.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proof_params
      params.require(:proof).permit(:message, :header, :token, :closingDate, :duration, :status, :questionsNumber, :subject_id, :teacher_id)
    end
end
