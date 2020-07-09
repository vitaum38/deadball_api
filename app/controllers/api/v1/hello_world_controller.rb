class Api::V1::HelloWorldController < ApplicationController
  def index
    render json: { status: 200, message: 'hello world!', data: {} }, status: :ok
  end
end
