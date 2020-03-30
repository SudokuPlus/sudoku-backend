Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do

      resources :users, except: %i[edit new] do
				resources :complete_puzzles, only: %i[index create]
				resources :incomplete_puzzles, only: %i[index create]
      end
      
      resources :complete_puzzles, only: %i[show index destroy update]
      resources :incomplete_puzzles, only: %i[show index destroy update]
    end
  end
end

# resources :complete_puzzles
# resources :incomplete_puzzles
# resources :users