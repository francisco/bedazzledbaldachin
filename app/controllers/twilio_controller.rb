class TwilioController < ApplicationController

  # require twilio_helper

  def index
    # @phone = params[:From]
    # @city = params[:FromCity]
    # @state = params[:FromState]
    @reply = parse_message(params[:From], params[:Body])
    render 'index.xml.erb', :content_type => 'text/xml'
  end
end