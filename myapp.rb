require "rubygems"
require "sinatra/base"
require 'sinatra/activerecord'
# require 'sinatra/activerecord/rake'
require Dir.pwd + "/models/comment.rb"

class MyApp < Sinatra::Base

  get '/' do
    @comment = Comment.all
    erb :index
  end

  post '/comment' do
    p "aqui van los params"
    p params
    Comment.create(content: params["content"], client_ip: request.ip)
    redirect '/'
  end

end
