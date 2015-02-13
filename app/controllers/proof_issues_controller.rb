class ProofIssuesController < ApplicationController
  before_action :set_proof_issue, only: [:show, :edit, :update, :destroy]



  def mostraQuestoes(token)
    
  

  end
  # GET /proof_issues
  # GET /proof_issues.json
  def index
   
    @proof_issues = ProofIssue.all
  end

  # GET /proof_issues/1
  # GET /proof_issues/1.json
  def show
  end

  # GET /proof_issues/new
  def new
    @proof_issue = ProofIssue.new
  end

  # GET /proof_issues/1/edit
  def edit
  end

  # POST /proof_issues
  # POST /proof_issues.json
  def create
    @proof_issue = ProofIssue.new(proof_issue_params)

    respond_to do |format|
      if @proof_issue.save
        format.html { redirect_to @proof_issue, notice: 'Proof issue was successfully created.' }
        format.json { render :show, status: :created, location: @proof_issue }
      else
        format.html { render :new }
        format.json { render json: @proof_issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proof_issues/1
  # PATCH/PUT /proof_issues/1.json
  def update
    respond_to do |format|
      if @proof_issue.update(proof_issue_params)
        format.html { redirect_to @proof_issue, notice: 'Proof issue was successfully updated.' }
        format.json { render :show, status: :ok, location: @proof_issue }
      else
        format.html { render :edit }
        format.json { render json: @proof_issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proof_issues/1
  # DELETE /proof_issues/1.json
  def destroy
    @proof_issue.destroy
    respond_to do |format|
      format.html { redirect_to proof_issues_url, notice: 'Proof issue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proof_issue
      @proof_issue = ProofIssue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proof_issue_params
      params.require(:proof_issue).permit(:proof_id, :issue_id)
    end
end
