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
      twitter << Twitter.new(tweet["username"], tweet["tweet"])
    end
    facebook_response.parse.each do |post|
      facebook << Facebook.new(post["name"], post["status"])
    end
    instagram_response.parse.each do |post|
      instagram << Instagram.new(post["username"], post["picture"])
    end

    render json: { twitter: twitter, facebook: facebook, instagram: instagram }
  end

  def valid_response(response)
    !!response.parse
  rescue
    false
  end
end
