FullCountrySelect::Engine.routes.draw do
  post '/get_states/:country', to: 'api#get_states'
  post '/get_cities/:country/:state', to: 'api#get_cities'
end
