class ConfirmationsController < Devise::ConfirmationsController
  private
  
  def after_confirmation_path_for(User, resource)
    "/hi"
  end
end