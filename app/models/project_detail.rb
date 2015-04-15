class ProjectDetail < ActiveRecord::Base
  has_many :projects
  has_many :subprojects
  has_many :tasks
  belongs_to :employee
end
