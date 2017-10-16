class User < ActiveRecord::Base

  has_many :orders
  has_many :reviews

  has_secure_password
  validates :password, length: { minimum: 1 }

  validates :email, presence: true, uniqueness: {:case_sensitive => false}
  validates :first_name, presence: true
  validates :last_name, presence: true

def User.authenticate_with_credentials(email, password)
  @user = User.find_by_email(email)

  if @user && @user.authenticate(password)

    return @user
  else
    return nil
  end

end


end
