class Project < ActiveRecord::Base
  has_many :employees
  has_many :subprojects
  has_many :tasks
  has_many :issues
  belongs_to :project_detail
  def self.get_id
    if Project.exists?(&:id)
      id = Project.maximum(:id)
      id += 1
      return id
    else
      id = 0
      id += 1
      return id
    end

  end
end
