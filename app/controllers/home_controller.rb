class HomeController < ApplicationController
  def index
  
    @drive_date =Setdate.all 
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
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end  
  def interviewer
    if current_user
      @n = current_user.name
      @list = User.where(inter:@n)
    else
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
    @data.update(params.require(:user).permit(:name,:email,:inter,:first,:password,:second,:third,:role,:attend_time,:interview_date))
    redirect_to admin_path
  end

  def detail
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @date = Mydate.where(date:params[:data])
  end  

  def admindata
    @data = params[:d]
  end  


  def create_detail 
    @id = User.find(params[:id])
    if params[:ten]!="" && params[:year]!="" && params[:percentage]!="" && params[:twelth]!="" && params[:year1]!="" && params[:percentage1]="" && params[:digree]!="" && params[:year2]!="" && params[:percentage2]!="" && params[:profile]!=""
      if @id.mydates.pluck(:profile).include?(params[:profile]) && @id.mydates.pluck(:date).include?(params[:date])
       flash[:notice] = "you have already Applied for this drive of profile #{params[:profile]} which held on date #{params[:date]}"
       redirect_to apply_path
      else  
        @id.mydates.create(:ten => params[:ten],:year => params[:year],:percentage => params[:percentage],:twelth => params[:twelth],:year1 => params[:year1],:percentage1 => params[:percentage1],:digree => params[:digree],:year2 => params[:year2],:percentage2 => params[:percentage2],:date => params[:date],:profile => params[:profile])
        flash[:notice] = "Successfully Applied"  
        redirect_to candidate_path
      end  
    else
      flash[:notice] = "Value not be empty"  
      redirect_to apply_path  
    end  
  end  


   
  def apply
    @all_date = Setdate.all
    if current_user

    else
      redirect_to root_path
    end  


  end

  def all_user_list
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @user = User.all    
  end  




  def admin
    @drive = 0
    if current_user
      @drive = Mydate.all
      if current_user.role == "admin"
        @d = Mydate.all
        @drive = @d
      end  
    else
      redirect_to root_path
    end  


  end  

   
  def track
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @user = User.find(params[:id])   
  end  
   
  def setdrivedate
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end
  

  def set
    @a = Setdate.new(:date => params[:date],:profile => params[:profile])
    if @a.save
      flash[:notice] = "Successfully date and Profile updated"  
      redirect_to setdrivedate_path
    elsif
      flash[:notice] = "date empty field"
      redirect_to setdrivedate_path
    elsif
      unless user_signed_in?
        redirect_to new_user_session_path
      end
    end   

  end

    

  def all_date
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @all_date = Setdate.all
  end   

    
  def remove
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @del = Setdate.find(params[:id])
    @del.destroy
    redirect_to all_date_path
  end  
  
  def edit_user_profile
    @user = User.find(params[:id])
  end  

  private
  def article_params(*args)
    params.require(:setdate).permit(:date,:profile)
  end
  

end
