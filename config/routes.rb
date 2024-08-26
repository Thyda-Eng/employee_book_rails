Rails.application.routes.draw do
  root "employees#index"
  get "/employees", to: "employees#index"

end
