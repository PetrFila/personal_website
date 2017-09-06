Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root "one_for_all#complete"

get " ", to: "one_for_all#complete"

end
