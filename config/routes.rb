Hirecxn::Application.routes.draw do

 get "/" => "main#home"

 get "/login" => 'sessions#new'
 get "/logout" => 'sessions#destroy'
 get "/authenticate" => 'sessions#create'

root 'recruiter#index'

#User Information
get "/users/new" => 'users#new'
get "/users/create" => 'users#create'
get "/users/:user_id/show" => 'users#show'

#Recruiter home page lists all jobs candidates
get "/recruiter" => "recruiter#index"

#Recruiter posts new jobs
get "/candidate/:candidate_id/update" => "candidate#update"
get "/candidate/:candidate_id/show" => "candidate#show"

  # UPDATE
get "/candidate/:candidate_id/edit" => "candidate#edit"

#Recruiter posts new jobs
get "/candidate/create" => "candidate#create"

#Candidate reviews all jobs
get "/candidate" => "candidate#index"

get "/candidate/:candidate_id/destroy" => "candidate#destroy"

#New candidate create new resume
get "/candidate/new" => "candidate#new"





end
