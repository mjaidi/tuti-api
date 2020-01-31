class User < ApplicationRecord
  AVAILABLE_ROLES  = ["admin", "customer", "supplier"]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable,:jwt_authenticatable,
  jwt_revocation_strategy: JwtBlacklist

  validates :role, inclusion: {in: AVAILABLE_ROLES}
end
