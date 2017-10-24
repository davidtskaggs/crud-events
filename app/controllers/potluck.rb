get "/potlucks" do
  @user = current_user
  @potlucks = Potluck.all
  erb :'potluck/index'
end

get "/potlucks/new" do
  @user = current_user
  erb :'potluck/new'
end

post '/potlucks' do
  @new_potluck = Potluck.new(user_id: current_user.id, name: params[:potluck][:name],
                             location: params[:potluck][:location],
                             starts_at: params[:potluck][:starts_at])
  if @new_potluck.save
    redirect '/potlucks'
  else
    @errors = @new_potluck.errors.full_messages
    erb :'potluck/new'
  end
end

get '/potlucks/:id' do
  @user = current_user
  @potluck = Potluck.find(params[:id])
  erb :'potluck/show'
end

get '/potlucks/:id/edit' do
  @user = current_user
  @potluck = Potluck.find(params[:id])
  if own_potluck?(@potluck)
    erb :'potluck/edit'
  else
    @errors = "You can't edit an event that isn't yours!"
    erb :'potluck/show'
  end
end

put '/potlucks/:id' do
  @potluck = Potluck.find(params[:id])
  @potluck.assign_attributes(params[:potluck])
  if @potluck.save
    redirect '/potlucks'
  else
    erb :'potluck/edit'
  end
end

delete '/potlucks/:id' do
  @user = current_user
  @potluck = Potluck.find(params[:id])
  if own_potluck?(@potluck)
    @potluck.destroy
    redirect '/potlucks'
  else
    @errors = "You can't delete an event that isn't yours!"
    erb :'potluck/show'
  end
end

get '/potlucks/:potluck_id/tickets' do
  @potluck = Potluck.find_by(id: params[:potluck_id])
  @ticket = @potluck.ticket
  erb :'ticket/index'
end

get '/potlucks/:potluck_id/ticket/new' do
  @user = User.new
  @potluck = Potluck.find_by(id: params[:potluck_id])
  erb :'ticket/new'
end

post '/potlucks/:potluck_id/ticket' do
  @potluck = Potluck.find_by(id: params[:potluck_id])

  @ticket = Ticket.new(potluck: @potluck, user_id: current_user.id,item: params[:ticket][:item])

  if @ticket.save
    redirect "/potlucks/#{@potluck.id}"
  else
    redirect '/'
  end

end


