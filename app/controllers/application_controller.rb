class ApplicationController < Sinatra::Base
  ### find out what the hell is all of this ########
  register Sinatra::ActiveRecordExtension
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }

  ########################

  get '/' do
    erb :index
  end

end
