get "/" do
  puts @user
  @user = current_user
  @time_current = Time.now
  @upcoming_potlucks = Potluck.all.order(starts_at: :ASC)
  @potlucks = Potluck.all
  @errors = "You must be logged in to view, create, or edit events!"
  erb :"index"
end


