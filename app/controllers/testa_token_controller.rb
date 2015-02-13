class TestaTokenController < ApplicationController
  

def new
end

def create
  name = params[:name]
  email = params[:email]
  token = Proof.testa_token?(params[:token])
  proof_id = Proof.get_proof_id(params[:token])
  
  if token
      redirect_to new_proof_answered_path(name: name, email: email, token: params[:token], proof_id: proof_id), :notice => "Boa sorte"
  else
    flash.now.alert = "Token inválido"
    redirect_to root_path
  end
end


end