class HomeController < ApplicationController
  def index
    if current_user
      if current_user.role == "user"
        redirect_to candidate_path 
      elsif current_user.role == "admin"
        redirect_to admin_path
      elsif current_user.role == "interviewer"
        redirect_to interviewer_path
      end
    end  
  end

  def candidate
  # ssaasass
  end  
  def interviewer
    unless user_signed_in?
      redirect_to new_user_session_path
    end

  end  
 
  def data
    unless user_signed_in?
     redirect_to new_user_session_path
    end
    @user =User.find(params[:id])
  end  

    

  def updatedata
    @data = User.find(params[:id])
    @data.update(params.require(:user).permit(:name,:email,:inter,:first,:password,:second,:third,:role))
    redirect_to admin_path
  end

  def detail
    unless user_signed_in?
      redirect_to new_user_session_path
     end
     @data = Mydate.where(date:params[:data])
  
  end  

  def admindata
    @data = params[:d]
  end  
  def create_detail
    @id = User.find(params[:id])
    @id.mydates.create(:ten => params[:ten],:year =>  params[:year],:percentage => params[:percentage],:twelth => params[:twelth],:year1 => params[:year1],:percentage1 => params[:percentage1],:digree => params[:digree],:year2 => params[:year2],:percentage2 =>params[:percentage2],:date => params[:date])

    redirect_to candidate_path
  end  

  def admin
    if current_user
      @drive = Mydate.all
    else
      redirect_to root_path
    end  


  end  
    
  def apply
    if current_user

    else
      redirect_to root_path
    end  


  end
end
