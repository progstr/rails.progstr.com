require 'user'

class ControllerController < ApplicationController
  rescue_from UserNotFoundError, :with => :user_not_found

  def initialize
    @log = Progstr::Logger.new("ControllerController")
    super
  end

  def errors
  end

  rescue_from UserNotFoundError, :with => :user_not_found

  def throw
    #Triggers a UserNotFound error
    @user = User.find(42)
  end

  def user_not_found(exception)
    @log.warn { "User not found\n#{exception.backtrace.join("\n\t")}" }

    @message = "Exception logged."
    render :errors
  end
end
