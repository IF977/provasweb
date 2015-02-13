class RelatorioController < ApplicationController


    def index
        @proof_answereds = ProofAnswered.where(token: params[:token])
        
        @prova = Proof.where(token: params[:token])
        
        
     
    end

end    
