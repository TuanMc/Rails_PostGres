class RegisterController < Devise::RegistrationsController
    def new
        super
      end
    
      def create
        @password = params[:user][:password]
        @password_cofirm = params[:user][:password_confirmation]
        if(@password == @password_cofirm)
          @user = User.new(user_params)

          respond_to do |format|
              if @user.save
                format.html { redirect_to @user, notice: 'User was successfully created.' }
                format.json { render :show, status: :created, location: @user }
              else
                format.html { render :new }
                format.json { render json: @user.errors, status: :unprocessable_entity }
              end
          end
        end
      end
    
      def update
        super
      end

      private 
      def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end
end
