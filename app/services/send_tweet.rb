class SendTweet

#creation de l'initialisation du message à poster.Creation du parametre pour le tweet
  def initialize(message)
    @message=message
  end

#execution de la tache a accomplir: 1/ se loger a twitter 2/envoyer le tweet avec le service crée en recuperant le parametre message
  def perform
    log_in_into_twitter
    send_tweet @message
  end


#se loger sur twitter en mode dotenv
  def log_in_into_twitter
      @client = Twitter::REST::Client.new do |config|
		  config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
		  config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
		  config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
		  config.access_token_secret = ENV['TWITTER_ACCESS_SECRET']
      end
  end

#envoi du tweet
  def send_tweet(tweet)
    @client.update(tweet)
  end
end
