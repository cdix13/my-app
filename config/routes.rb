# == Route Map
#
#                    Prefix Verb   URI Pattern                            Controller#Action
#         new_admin_session GET    /administrator/login(.:format)         devise/sessions#new
#             admin_session POST   /administrator/login(.:format)         devise/sessions#create
#     destroy_admin_session DELETE /administrator/logout(.:format)        devise/sessions#destroy
#            admin_password POST   /administrator/password(.:format)      devise/passwords#create
#        new_admin_password GET    /administrator/password/new(.:format)  devise/passwords#new
#       edit_admin_password GET    /administrator/password/edit(.:format) devise/passwords#edit
#                           PATCH  /administrator/password(.:format)      devise/passwords#update
#                           PUT    /administrator/password(.:format)      devise/passwords#update
# cancel_admin_registration GET    /administrator/cancel(.:format)        devise/registrations#cancel
#        admin_registration POST   /administrator(.:format)               devise/registrations#create
#    new_admin_registration GET    /administrator/sign_up(.:format)       devise/registrations#new
#   edit_admin_registration GET    /administrator/edit(.:format)          devise/registrations#edit
#                           PATCH  /administrator(.:format)               devise/registrations#update
#                           PUT    /administrator(.:format)               devise/registrations#update
#                           DELETE /administrator(.:format)               devise/registrations#destroy
#                      root GET    /                                      pages#home
#

Rails.application.routes.draw do
  # devise admin
  #
  devise_for :admins,
    path: 'administrator',
    path_names: {
      sign_in: 'login',
      sign_out: 'logout'
    }

  # pages
  #
  root 'pages#home'

  # # frontend
  # #
  # namespace :frontend, path: '' do
  #   root 'pages#home', as: :root
  # end

  # # backend
  # #
  # namespace :backend, path: Figaro.env.admin_path do
  #   root 'dashboard#index', as: :dashboard
  # end
end
