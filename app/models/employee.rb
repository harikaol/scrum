class Employee < ActiveRecord::Base
  belongs_to :role
  mount_uploader :avatar, AvatarUploader
  # validates :name, presence: true
  # validates :name, length: { minimum: 0 ,message: "name should not be blank"}

  def self.get_id
    if Employee.exists?(&:id)
      id = Employee.maximum(:id)
      id += 1
      return id
    else
     id = 0
      id += 1
      return id
    end

  end
  scope :application_forms,lambda{where("status = 'Created'")}
  has_many  :projects
  has_many  :subprojects
  has_many  :tasks
  has_many :project_details
end
