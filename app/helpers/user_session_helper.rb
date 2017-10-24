def current_user
  @current_user ||= User.find_by(id: session[:user_id])
end

def logged_in?
  !!current_user
end

def own_potluck?(event)
  logged_in? && event.user == current_user
end

