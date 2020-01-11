require 'will_paginate/array'
class QuotesController < ApplicationController
  
  # GET /quotes
  # GET /quotes.json
  def index
    @quotes = Quote.filter(params[:filter])
      @line_chart_data = @quotes.group_by {|h| h[:refernce]}
             .map {|k, v| {name: k, data: Quote.group_by_day(:date).average(:price)}}
  
  end


  # GET /quotes/new
  def new
    @quote = Quote.new
  end

end