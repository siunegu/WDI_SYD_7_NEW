# == Route Map
#
#                   Prefix Verb   URI Pattern                    Controller#Action
#          playlists_index GET    /playlists/index(.:format)     playlists#index
#                  artists GET    /artists(.:format)             artists#index
#                          POST   /artists(.:format)             artists#create
#               new_artist GET    /artists/new(.:format)         artists#new
#              edit_artist GET    /artists/:id/edit(.:format)    artists#edit
#                   artist GET    /artists/:id(.:format)         artists#show
#                          PATCH  /artists/:id(.:format)         artists#update
#                          PUT    /artists/:id(.:format)         artists#update
#                          DELETE /artists/:id(.:format)         artists#destroy
#                    songs GET    /songs(.:format)               songs#index
#                          POST   /songs(.:format)               songs#create
#                 new_song GET    /songs/new(.:format)           songs#new
#                edit_song GET    /songs/:id/edit(.:format)      songs#edit
#                     song GET    /songs/:id(.:format)           songs#show
#                          PATCH  /songs/:id(.:format)           songs#update
#                          PUT    /songs/:id(.:format)           songs#update
#                          DELETE /songs/:id(.:format)           songs#destroy
#                playlists GET    /playlists(.:format)           playlists#index
#                          POST   /playlists(.:format)           playlists#create
#             new_playlist GET    /playlists/new(.:format)       playlists#new
#            edit_playlist GET    /playlists/:id/edit(.:format)  playlists#edit
#                 playlist GET    /playlists/:id(.:format)       playlists#show
#                          PATCH  /playlists/:id(.:format)       playlists#update
#                          PUT    /playlists/:id(.:format)       playlists#update
#                          DELETE /playlists/:id(.:format)       playlists#destroy
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /users(.:format)               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                          PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                     root GET    /                              welcome#index
#

Rails.application.routes.draw do
  
  get 'playlists/index'

  resources :artists
  resources :songs
  resources :playlists

  devise_for :users

  root "welcome#index"
  
end
