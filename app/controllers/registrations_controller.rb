class RegistrationsController < Devise::RegistrationsController 
  def new
    @background_image = "background-registration"  
    super
  end
end