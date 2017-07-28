class ContactMessagesController < ApplicationController
  include Clearance::Controller
  before_action :set_contact_message, only: [:show, :edit, :update, :destroy]

  # GET /contact_messages
  def index
    @contact_messages = ContactMessage.all
  end

  # GET /contact_messages/1
  def show
  end

  # GET /contact_messages/new
  def new
    @contact_message = ContactMessage.new
  end

  # GET /contact_messages/1/edit
  def edit
  end

  # POST /contact_messages
  def create
    @contact_message = ContactMessage.new(contact_message_params)

    if @contact_message.save
      redirect_to @contact_message, notice: 'Contact message was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /contact_messages/1
  def update
    if @contact_message.update(contact_message_params)
      redirect_to @contact_message, notice: 'Contact message was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /contact_messages/1
  def destroy
    @contact_message.destroy
    redirect_to contact_messages_url, notice: 'Contact message was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_message
      @contact_message = ContactMessage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def contact_message_params
      params.require(:contact_message).permit(:name, :subject, :phone, :email, :content)
    end
end
