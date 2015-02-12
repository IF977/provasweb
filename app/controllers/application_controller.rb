class ApplicationController < ActionController::Base
  
helper_method :current_user
helper_method :current_token

helper_method :create_token


def create_token
    random_number = SecureRandom.hex(3)
    "1X#{random_number}"

    while Proof.find_by_token("1X#{random_number}") != nil
      random_number = SecureRandom.hex(3)
      "1X#{random_number}"
    end
    "1X#{random_number}"
  end


private

def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end

helper_method :current_teacher

private

def current_teacher
  @current_teacher ||= User.find(session[:teacher_id]) if session[:teacher_id]
end

helper_method :current_aluno

private

def current_aluno
  @current_aluno ||= ProofAnswered.find(session[:aluno_id]) if session[:aluno_id]
end

def questoes(token)
  
 @questoesProva =  proof_issues.proofs.token.find(token)
  
end  

private

def current_token
  @current_token ||= ProofAnswered.find(session[:aluno_id]) if session[:aluno_id]
end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
