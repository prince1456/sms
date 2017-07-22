class ContactsController < ApplicationController

  def index
    account_sid = 'safasfas'
    auth_token = '02c737e6saffasf'
    @client = Twilio::REST::Client.new account_sid, auth_token
       messages = @client.messages
      #  @mymessage = messages.where(body: params[:search])

    @contact = Contact.new
    if params[:search].present?
      @contacts = Contact.search_contacts(params[:search])
    else
      @contacts = Contact.all
  end

  end
  def hallo
    Contact.create(number: params[:From], body: params[:Body] )

  end
  def new
    twiml = Twilio::TwiML::Response.new do |r|
        r.Message "The Robots are coming! Head for the hills!"
    end
  end
  def create
    # account_sid = 'AC288a35e4a1b5650264a87bb04cf8da32'
    # auth_token = '027ae70ee04caaf04a2e335ed9c737e6'
    # @client = Twilio::REST::Client.new account_sid, auth_token
    #
    # @client.messages.list.each do |message|
    #    if message.direction == "inbound"
    #       Contact.create(number: message.from, body: message.body)
    #     end
    # end
    # redirect_to root_path
  end
  def update
  end
  def show
  end


  private
  def strong_params

  end

  def authentication
    account_sid = 'AC288a35e4a1b5650264a87bb04cf8da32'
    auth_token = '027ae70ee04caaf04a2e335ed9c737e6'
    @client = Twilio::REST::Client.new account_sid, auth_token
  end
end
