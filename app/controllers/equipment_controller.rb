class EquipmentController < ApplicationController

  def index
    @devioces = Devioce.all
  end

  def about

  end
  def recurring
  
  end
  def renew
   
  end
  
  def login
    
  end

  def chklogin
    if params[:id]=="admin"&& params[:password]=="root"
      flash[:notice]="Success"
      session[:login]="true"
      redirect_to :action=>'adddv'
    else
       flash[:notice]="Fail"
    end

  end

  def logout
    reset_session
    redirect_to :action=>'login'
  end

  def adddv
    if request.post? 
        @adddv=Devioce.new :code=>params[:iddv],
          :name => params[:dvname],
          :remain => params[:dvremain]
        if @adddv.save
          flash[:tice] = "Success"
          session[:login]="true"
        else
          flash[:tice] = "fail"
          session[:login]="true"
        end        
    else
      if session[:login]=="true"

      else
        redirect_to :action=>'login'
      end
    end
  end

  def borrow
   if request.post? 
     @device = Devioce.find_by_code_and_name params[:iddv],params[:namedv]
     if @device && @device.remain>0 
       @borrow = Student.new :stdid=>params[:stdidd],
       :stdname=>params[:stdnamee],
       :dvid =>params[:iddv],
       :dvname=>params[:namedv],
       :date=>Time.now,
       :todate=>Time.now+(60*60*24*7)
      if @borrow.save
        flash[:borrow] = "Success"
        @device.update_attribute(:remain,@device.remain-1)
      end
     else
       flash[:borrow] = "Fail"
     end
   end
  end
  
  def time
    @students = Student.all
  end

  def students
   if session[:login]=="true"
     @students = Student.all
   else
     redirect_to :action=>'login'
    end
  end

  def reneweq
   if request.post?  
     @students = Student.find_all_by_stdid_and_recalldate(params[:idstd],nil)
     if @students==[]
      flash[:ok]="Fail"
      redirect_to :action=>'renew'
     else
       
     end
   end

  end

  def retime
    @s = Student.find_by_id params[:id]
    @s.update_attribute(:todate,Time.now+(60*60*24*7))
    flash[:ok]="Success"                                                            
    redirect_to :action=>'renew'
   
  end
     
  def recurr
    if request.post?  
      @students = Student.find_all_by_stdid_and_recalldate(params[:idstd],nil)
     if @students==[] 
      flash[:os]="Fail"
      redirect_to :action=>'recurring'
     else
       
     end
   end
  end
  
  def recurritem
     @s = Student.find_by_id params[:id]
     @device = Devioce.find_by_code_and_name @s.dvid,@s.dvname
     @s.update_attribute(:recalldate,Time.now) 
     @device.update_attribute(:remain,@device.remain+1)
     flash[:os]="Success"
     redirect_to :action=>'recurring'
  end

  def search
    if request.post? 
     @students = Student.find_all_by_stdid(params[:idstd])
     if @students==[] 
      flash[:ss]="Fail"
      redirect_to :action=>'index'
     else
       flash[:ss]="Success"
     end
    end 
  end

  def delete
    @d = Devioce.find(params[:id])
    @d.destroy
    redirect_to :action=>'devices'
  end
  def deletestudent
    @s = Student.find(params[:id])
    @s.destroy
    redirect_to :action=>'students'

  end


  def devices
      if session[:login]=="true"
        @devioces = Devioce.all
      else
        redirect_to :action=>'login'
      end
  end
  def editdv
    @device = Devioce.find(params[:id])
  end

  def updatedv
    @device = Devioce.find params[:id]
    @device.update_attributes!(params[:device])
    redirect_to :action=>'devices'
  end


end
