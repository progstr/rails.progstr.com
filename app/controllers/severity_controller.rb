class SeverityController < ApplicationController
  def initialize
    @log = Progstr::Logger.new("SeverityController")
    super
  end
  def index
    @severity = "Info"
    params[:severity] = "Info"
  end

  def log
    @severity = params[:severity]
    @logMessage = params[:logMessage]

    case @severity
    when "Info"
      @log.info @logMessage
    when "Warning"
      @log.warn @logMessage
    when "Error"
      @log.error @logMessage
    when "Fatal"
      @log.fatal @logMessage
    else
      @log.info @logMessage
    end

    render :index
  end
end
