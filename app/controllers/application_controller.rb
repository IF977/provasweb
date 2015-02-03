class ApplicationController < ActionController::Base
  
helper_method :current_user

private

def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end

helper_method :current_teacher

private

def current_teacher
  @current_teacher ||= User.find(session[:teacher_id]) if session[:teacher_id]
end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
