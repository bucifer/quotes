class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def not_found
  	raise ActionController::RoutingError.new('Not Found')
  end
  # this was to send back correctly 404 Not Found error when you query by incorrect params

end
