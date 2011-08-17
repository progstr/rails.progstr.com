class ActionsController < ApplicationController
  def initialize
    @log = Progstr::Logger.new("ActionsController")
    super
  end

  def index
  end

  before_filter :before_action
  after_filter :after_action

  def deposit
    @log.info { "Deposit some money." }

    render :index
  end

  def before_action
    @log.info { "Executing action '#{params[:action]}' of controller '#{params[:controller]}'" }
  end

  def after_action
    @log.info { "Executed action '#{params[:action]}' of controller '#{params[:controller]}'" }
  end
end
