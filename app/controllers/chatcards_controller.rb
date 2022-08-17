class ChatcardsController < ApplicationController
  before_action :set_chatcard, only: [:show, :update, :destroy]

  # GET /chatcards
  def index
    @chatcards = Chatcard.all

    render json: @chatcards
  end

  # GET /chatcards/1
  def show
    render json: @chatcard
  end

  # POST /chatcards
  def create
    @chatcard = Chatcard.new(chatcard_params)

    if @chatcard.save
      render json: @chatcard, status: :created, location: @chatcard
    else
      render json: @chatcard.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /chatcards/1
  def update
    if @chatcard.update(chatcard_params)
      render json: @chatcard
    else
      render json: @chatcard.errors, status: :unprocessable_entity
    end
  end

  # DELETE /chatcards/1
  def destroy
    @chatcard.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chatcard
      @chatcard = Chatcard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chatcard_params
      params.require(:chatcard).permit(:chat_id)
    end
end
