ENV["RACK_ENV"] = 'development'

require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/' do
    "Hello Sinatra"
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  get '/add-bookmark' do
    erb(:add_bookmark)
  end

  post '/bookmarks' do
    Bookmark.create(params[:url])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
