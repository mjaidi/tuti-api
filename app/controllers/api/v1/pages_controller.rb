class Api::V1::PagesController < Api::V1::BaseController
  before_action :verify_login
  def main
   render json: {message: "This message is brought to you by the server"}
  end

  private

  def verify_login
    unless current_user
      render json: {error: 'please login to continue'}, status: :not_found
    end
  end
end