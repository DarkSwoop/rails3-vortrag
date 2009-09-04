def create
  @user = User.new(params[:user])
  respond_to do |format|
    if @user.save
      flash[:notice] = 'User was successfully created.'
      format.html { redirect_to(@user) }
      format.xml { render :xml => @user, :status => :created, :location => @user }
    else
      format.html { render :action => "new" }
      format.xml { render :xml => @user.errors, :status => :unprocessable_entity }
    end
  end
end


respond_to :html, :xml # class level
def create
  @user = User.new(params[:user])
  flash[:notice] = 'User was successfully created.' if @user.save
  respond_with(@user)
end
