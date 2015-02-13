class ProofAnsweredsController < ApplicationController
  before_action :set_proof_answered, only: [:show, :edit, :update, :destroy]

   
       def validaToken(token)
         if Proof.exists?(token: token)
               return true
         else
               return false
         end
      end      
    
     


  # GET /proof_answereds
  # GET /proof_answereds.json
  def index
    @proof_answereds = ProofAnswered.all
  end

  # GET /proof_answereds/1
  # GET /proof_answereds/1.json
  def show
  end

  # GET /proof_answereds/new
  def new
      @name = params[:name]
      @email = params[:email]
      @token = params[:token]
      @proof_id = params[:proof_id]
    
      @proof_answered = ProofAnswered.new
      @proof = Proof.find(@proof_id)
      @questions = @proof.proof_issues.all.shuffle
      @proof_answered.answers.build
  end

  # GET /proof_answereds/1/edit
  def edit
  end

  # POST /proof_answereds
  # POST /proof_answereds.json
  def create
       @proof_answered = ProofAnswered.new(proof_answered_params)
       respond_to do |format|
        if @proof_answered.save
          format.html { redirect_to root_path, notice: 'Sua prova foi respondida com sucesso!' }
          format.json { render :show, status: :created, location: @proof_answered }
        else
          format.html { render :new }
          format.json { render json: @proof_answered.errors, status: :unprocessable_entity }
        end
      end
  end

  # PATCH/PUT /proof_answereds/1
  # PATCH/PUT /proof_answereds/1.json
  def update
    respond_to do |format|
      if @proof_answered.update(proof_answered_params)
        format.html { redirect_to @proof_answered, notice: 'Proof answered was successfully updated.' }
        format.json { render :show, status: :ok, location: @proof_answered }
      else
        format.html { render :edit }
        format.json { render json: @proof_answered.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proof_answereds/1
  # DELETE /proof_answereds/1.json
  def destroy
    @proof_answered.destroy
    respond_to do |format|
      format.html { redirect_to proof_answereds_url, notice: 'Proof answered was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proof_answered
      @proof_answered = ProofAnswered.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proof_answered_params
      params.require(:proof_answered).permit(:name, :email, :startTime, :endTime, :token, :answers, answers_attributes: [:id, :proof_issue_id, :alternative_id, :_destroy])
    end
end
