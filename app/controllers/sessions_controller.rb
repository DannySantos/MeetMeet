class SessionsController < Devise::RegistrationsController 
  def new
    @background_image = "background-log-in"  
    super
  end
end