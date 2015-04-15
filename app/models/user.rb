class User < ActiveRecord::Base
 
  belongs_to :role
  #has_and_belongs_to_many :roles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable
  # devise :database_authenticatable, :registerable, :confirmable, :recoverable, stretches: 20
  ROLES = %w[employee admin scrummaster]
  def role?(base_role)
    ROLES.index(base_role.to_s) <= ROLES.index(role)
  end
  def has_role?(role_sym)
    roles.any? { |r| r.name.underscore.to_sym == role_sym }
  end
  def is?(role)
    roles.include?(role.to_s)
  end

  def roles=(roles)
    self.role_id= (roles & ROLES).map { |r| 2**ROLES.index(r) }.inject(0, :+)
  end

  def roles
    ROLES.reject do |r|
      ((role_id.to_i || 0) & 2**ROLES.index(r)).zero?
    end
  end
end
