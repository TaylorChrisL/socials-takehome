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
    twitter = []
    facebook = []
    instagram = []

    twitter_response.parse.each do |tweet|
      twitter << tweet["tweet"]
    end
    facebook_response.parse.each do |post|
      facebook << post["status"]
    end
    instagram_response.parse.each do |post|
      instagram << post["picture"]
    end

    render json: { twitter: twitter, facebook: facebook, instagram: instagram }
  end

  def valid_response(response)
    !!response.parse
  rescue
    false
  end
end
