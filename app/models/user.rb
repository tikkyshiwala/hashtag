class User < ActiveRecord::Base
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :role, presence: true

  def admin?
    role == :admin
  end
end
