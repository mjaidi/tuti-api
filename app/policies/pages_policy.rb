class PagesPolicy < Struct.new(:user, :pages)
  def secret?
    user
  end
  def admin?
    user.role == 'admin'
  end
end
