map.resources :articles do |articles|
  articles.resources :comments
end

resources :articles do
  resources :comments
end
