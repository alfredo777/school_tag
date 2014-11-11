class UserController < ApplicationController
  def create
    @user = User.create(name: params[:name], phone: params[:phone].to_i, avatar: params[:avatar], :alias => params[:alias])
    puts "************ #{@user} *****************"
    session[:user] = @user.id
    
    if @user.save 
      @user
    else
      @user = "El usuario no ha podido ser guardado correctamente puede que ya exista"
    end
    render json: @user
    # http://localhost:3000/user/create?name=alfredo&phone=53416882&alias=jarda&avatar=nil
  end

  def edit
  end

  def delete

  end

  def log_in
    @user = User.find_by_phone(params[:phone].to_i)

    if @user
       session[:user] = @user.id
    else
       @user = "Can´t acces to user"
    end

    render json: @user.to_json
  end

  def digest(param_to_digest)
      sha256 = Digest::SHA256.new
      @digest = sha256.update param_to_digest.to_s
   end
end
