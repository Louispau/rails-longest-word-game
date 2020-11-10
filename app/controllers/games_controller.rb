class GamesController < ApplicationController
  def new
    @letters = ("a".."z").to_a.sample(10)
  end

  def score
    @word = params [:word]
    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    dictionary = open(url).read
    response = Json.parse(dictionary)
    @response = response[:found]

  end
end
