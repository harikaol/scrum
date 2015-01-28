class Subproject < ActiveRecord::Base
  belongs_to :project
  has_many :tasks
  has_many :subprojects
  has_one :employee
end
