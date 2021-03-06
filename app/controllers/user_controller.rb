# frozen_string_literal: true

# class UserController
class UserController < ApplicationController
  before_action :authenticate_user

  def authenticate_user
    redirect_to new_user_session_path unless current_user
  end
end
