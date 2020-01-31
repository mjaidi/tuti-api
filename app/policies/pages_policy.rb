class PagesPolicy < Struct.new(:user, :pages)
  def main?
    user
  end
  def admin_page?
    user.role == 'admin'
  end
end
