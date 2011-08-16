class MessageController < ApplicationController
  def initialize
    @log = Progstr::Logger.new("MessageController")
    super
  end
  def index
    @product =  "Noname music player 001"
    @comment =  "Display seems faulty. It breaks often and people return the product."
  end

  def save
    @product = params[:product]
    @comment = params[:comment]
    @generation = params[:generation]

    if @generation == "Always" then
      @log.info("[Always] New comment for product '#{@product}' - '#{@comment}'")
    else
      @log.info { "[Conditional] New comment for product '#{@product}' - '#{@comment}'" }
    end

    @message = "Log sent to server."
    render :index
  end
end
