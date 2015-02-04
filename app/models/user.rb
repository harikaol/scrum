class User < ActiveRecord::Base
  authenticates_with_sorcery!
  validates_confirmation_of :password, message: "should match confirmation", if: :password

  # attr_accessible :email, :username, :password, :password_confirmation
  # has_secure_password
  # before_save { |user| user.email = email.downcase }
  # before_save :create_remember_token

  # validates :name, presence: true, length: { maximum: 50 }
  # # validates :lname, presence: true, length: { maximum: 50 }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
  # uniqueness: { case_sensitive: false }
  # validates :password, presence: true, :on => :create
  # validates :password, length: { minimum: 6 }, :allow_blank => true
  # validates :password_confirmation, presence: true, :on => :create



  def send_password_reset
    create_remember_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    UserMailer.password_reset(self).deliver
  end

  private

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end
