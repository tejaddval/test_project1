class AccountsController < ApplicationController
  # GET /accounts
  # GET /accounts.xml
 

def index
    @user = User.find(params[:id])
		accounts = Useraccount.find(:all, :conditions => {:user_id => @user.id})
			acc_nos = ""
#			accounts.each do |a|
#				acc_nos = acc_nos + ((acc_nos.length == 0) ? a.account_no : acc_nos + ',' + a.account_no
#			end
			@bal = Transaction.find(:first, :conditions => {:account_no => accounts[0].account_no}, :order => "created_at desc")
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @account }
    end
end

  # GET /accounts/1
  # GET /accounts/1.xml
  def show
    @account = Account.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @account }
    end
  end

  # GET /accounts/new
  # GET /accounts/new.xml
  def new
    @account = Account.new
		respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @account }
    end
  end

  # GET /accounts/1/edit
  

  # POST /accounts
  # POST /accounts.xml
  def create
    @account = Account.new(params[:account])

    respond_to do |format|
      if @account.save
        format.html { redirect_to(@account, :notice => 'Account was successfully created.') }
        format.xml  { render :xml => @account, :status => :created, :location => @account }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @account.errors, :status => :unprocessable_entity }
      end
    end
  end

def edit_user
    @user = User.find(params[:id])
  end

  # PUT /accounts/1
  # PUT /accounts/1.xml
  def update
    @user = User.find(params[:id])

    	respond_to do |format|
      if @account.update_attributes(params[:user])
        format.html { redirect_to(@user, :notice => 'Account was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /accounts/1
  # DELETE /accounts/1.xml
  def destroy
    @account = Account.find(params[:id])
    @account.destroy

    respond_to do |format|
      format.html { redirect_to(accounts_url) }
      format.xml  { head :ok }
    end
  end

 # def new_user
  #  @userinfo = Userinfo.new
   # respond_to do |f|
    #  f.html
    #end
  #end

  #def save
		#@userinfo = Userinfo.new(params[:userinfo])
		#respond_to do |format|
			#if @userinfo.save
			#ac = Useraccount.new
			#ac.user_id = @userinfo.id
			#ac.account_no = "SBI" + @userinfo.id.to_s
			#ac.save
       # format.html
      #else
       # format.xml
      #end
    #end
  #end



def new_user
    @user = User.new
    respond_to do |f|
      f.html
    end
  end

  def save
#debugger
		@user = User.new(params[:user])
			if @user.save
			ac = Useraccount.new
			ac.user_id = @user.id
			ac.account_no = "SBI" + @user.id.to_s
			ac.save
        redirect_to root_url
      else
        render :action => :new_user
      end
  end


	def show_user
	#debugger
			@user = current_user #User.find(params[:id])
			accounts = Useraccount.find(:all, :conditions => {:user_id => @user.id})
			acc_nos = ""
#			accounts.each do |a|
#				acc_nos = acc_nos + ((acc_nos.length == 0) ? a.account_no : acc_nos + ',' + a.account_no
#			end
			@bal = Transaction.find(:first, :conditions => {:account_no => accounts[0].account_no}, :order => "created_at desc")
		end

		#def show_user
			#@userinfo = Userinfo.find(params[:id])
			#accounts = Useraccount.find(:all, :conditions => {:user_id => params[:id]})
			#acc_nos = ""
#			accounts.each do |a|
#				acc_nos = acc_nos + ((acc_nos.length == 0) ? a.account_no : acc_nos + ',' + a.account_no
#			end
			#@bal = Transaction.find(:first, :conditions => {:account_no => accounts[0].account_no}, :order => "created_at desc")
		#end
  
 

  def new_trans
     @transaction = Transaction.new
     respond_to do |f|
      f.html
    end
  end
 
def debit_amount
     @transaction = Transaction.new
     respond_to do |f|
      f.html
    end
  end

  def ent_balance
     @transaction = Transaction.new
     respond_to do |f|
      f.html
    end
  end
  
	def savedebit
  debugger
		@bal = Transaction.find(:first, :conditions => {:account_no => params[:transaction][:account_no]}, :order => "created_at desc")
   	@transaction = Transaction.new(params[:transaction])
    @transaction.save 
		if @transaction.credit
			@transaction.balance = @bal.balance + @transaction.credit
			@transaction.save 
			redirect_to new_trans_path
		else if @transaction.debit
			@transaction.balance = @bal.balance - @transaction.debit
			@transaction.save 
			redirect_to debit_amount_path
		end
  end
  end

	def show_transaction
	#debugger
  @account = Useraccount.find_by_user_id(params[:id])
	@transaction = Transaction.find_all_by_account_no(@account.account_no)
	end


def create
  @user = User.create( params[:user] )
end

end
  
