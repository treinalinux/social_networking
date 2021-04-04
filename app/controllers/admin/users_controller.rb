# frozen_string_literal: true

# class Admin::UsersController
class Admin::UsersController < AdminController
  def index
    @users = User.order(id: :desc)
  end
end
