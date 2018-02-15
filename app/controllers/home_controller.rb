class HomeController < ApplicationController

#def index
def index
end

#def tweet qui appelle le service SendTweet en constituant les parametres tweet et message(à rentrer)
def tweet
 SendTweet.new(params[:tweet][:message]).perform
 redirect_to root_path
end


end
