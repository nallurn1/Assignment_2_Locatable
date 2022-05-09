 # Project name: Locatable
 # Description: Sending out alerts to the user's close contacts when they are in possible danger
 # Filename: routes.rb
 # Description: The routes for all the pages for this web application
 # Last modified on: 4/20/22
 # Code written by Nithya Nalluri

# frozen_string_literal: true

# This file tells the Rails server how incoming requests are sent to which
# controller and method.
#
#
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
      
  resources :alerts
  resources :user_locations
  resources :user_profiles
  resources :contacts
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # The root page, e.g. www.example.com/, is sent here
  # root 'controller#method_in_controller'
  root 'home#index'
  get 'home/about'
  get 'home/instructions'

  # Routes for pages other than the root
  # get 'home/addmail'
  # get 'home/viewmail'
  # get 'home/managetags'
  # get 'home/help'

  # Devise authentification pages. This controlls the user login
  # and authentification system.
  devise_for :users

  devise_scope :user do  
     get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  # Examples:
  #
  # # Add app CRUD operations from a controller. Used with scaffolding.
  # # CRUD -> create (API/POST), new (page/GET), index, show,
  #           edit(page/GET), update(API/PATCH|PUT), destroy(API/DELETE)
  # resources :my_controller
  #
  # # Add GET path for photos controller, index method
  # get 'photos/index'
  #
  # # Resources, but only register these methods
  # resources :photos, only: [:index, :new, :create, :destroy]
  #
  # # Add PUT path for the given url, but send it to a different controller
  # # than rails would assume by the name. to: 'controller#method_name'.
  # # It would have extected to: 'add_tags#add', which would fail
  # put '/add_tags/add', to: 'users#add_tags'
end