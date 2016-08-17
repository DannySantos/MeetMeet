class SessionsController < Devise::SessionsController 
  def new
    @background_image = "background-log-in"  
    super
  end
end