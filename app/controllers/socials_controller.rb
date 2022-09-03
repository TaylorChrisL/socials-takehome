class SocialsController < ApplicationController
  def index
    while true
      twitter_response = HTTP.get("https://takehome.io/twitter")
      break if valid_response(twitter_response)
    end

    while true
      facebook_response = HTTP.get("https://takehome.io/facebook")
      break if valid_response(facebook_response)
    end

    while true
      instagram_response = HTTP.get("https://takehome.io/instagram")
      break if valid_response(instagram_response)
    end
    output = {
      twitter: [],
      facebook: [],
      instagram: [],
    }

    twitter_response.parse.each do |tweet|
      output[:twitter] << { tweet: tweet["tweet"] }
    end
    facebook_response.parse.each do |post|
      output[:facebook] << { status: post["status"] }
    end
    instagram_response.parse.each do |post|
      output[:instagram] << { photo: post["picture"] }
    end

    render json: output
  end

  def valid_response(response)
    !!response.parse
  rescue
    false
  end
end
