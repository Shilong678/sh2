# frozen_string_literal: true

class PostCheckersController < ApplicationController
  def index
    if params[:query]
      @posts = search(params[:query])
      flash[:notice] = "Your Post code belong to #{@posts}"
    end
  end

  private

  def search(query)
    response = Faraday.get "http://postcodes.io/postcodes/#{query}"
    data = JSON.parse(response.body)
    lsoa=  data['result']['lsoa']
    lsoa
  end
end
