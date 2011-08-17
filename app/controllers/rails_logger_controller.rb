class RailsLoggerController < ApplicationController
  def index
    @severity = "Info"
    params[:severity] = "Info"
  end

  def log
    @severity = params[:severity]
    logMessage = params[:logMessage]

    case @severity
    when "Info"
      Rails.logger.info("rails.severity") { logMessage }
    when "Warning"
      Rails.logger.warn("rails.severity") { logMessage }
    when "Error"
      Rails.logger.error("rails.severity") { logMessage }
    when "Fatal"
      Rails.logger.fatal("rails.severity") { logMessage }
    else
      Rails.logger.info("rails.severity") { logMessage }
    end

    @message = "Log sent to server."
    render :index
  end
end
