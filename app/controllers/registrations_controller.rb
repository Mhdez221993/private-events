class RegistrationsController < Devise::RegistrationsController
  def show
  end

private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  def account_update
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  end
  
end
