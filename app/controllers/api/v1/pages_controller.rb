# frozen_string_literal: true

class Api::V1::PagesController < Api::V1::BaseController
  def secret
    authorize :pages, :secret?
    render json: { message: 'This message is brought to you by the server this page can be accessed by all users' }
  end

  def admin
    authorize :pages, :admin?
    render json: { message: 'Welcome Admin' }
  end
end
