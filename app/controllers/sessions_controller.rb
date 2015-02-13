class SessionsController < ApplicationController
  

def new
end

def create
  user = User.authenticate(params[:email], params[:password])
  if user
    session[:user_id] = user.id
    user_id = user.id
    sql = "SELECT id
         FROM teachers
       WHERE user_id = user_id"

    Teacher.find_by_sql(sql).each do |row|   
       session[:teacher_id] = "#{row.id}," 
       
    end
    
    if Teacher.exists?(user_id: [user.id])
     
    #session[:teacher_id] = 10
      
    #puts Teacher.find(:all,:conditions=> ["id = ?","10"])
      
      #array_teacher = Teacher.where("user_id = id_usuario").select("id")
      #session[:teacher_id] = array_teacher
       
      redirect_to  teachers_url, :notice =>  "Logged in!"
      
     # puts array_teacher
      
    else
      redirect_to new_teacher_path, :notice => "Logged in!"
    end  
      
  else
    flash.now.alert = "Invalid email or password"
    render "new"
  end
end

def destroy
  session[:user_id] = nil
  redirect_to root_url, :notice => "Logged out!"
end


end