class Api::V1::PagesController < Api::V1::BaseController
  def main
    authorize :pages, :main?
    render json: {message: "This message is brought to you by the server this page can be accessed by all users"}
  end

  def admin_page
    authorize :pages, :admin_page?
    render json: {message: 'Welcome Admin'}
  end
end