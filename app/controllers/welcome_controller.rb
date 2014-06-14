class WelcomeController < ApplicationController
  

  def index
  	@welcome=Welcome.new
  end

 
  def create
  @welcome = Welcome.new(welcome_params)
end

private
  def welcome_params
    params.require(:welcome).permit(:title)
  end

end
