class SessionsController < ApplicationController
  
  def index

    byebug
    #setting the value of session hash
    session[:session_hello] ||= "World"

    #setting the value of cookies hash
    cookies[:cookies_hello] ||= "World"

    # serializing or rendering value of "session" and "cookies" in a hash format
    render json: { session: session, cookies: cookies.to_hash }
  end

end
