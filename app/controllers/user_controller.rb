class UserController < ApplicationController
  def apikey
    @newapikey = User.create()
    if @newapikey.save
      render json: @newapikey, status: :created
    else
      render json: @newapikey.errors, status: :unprocessable_entity
    end
  end
end
