class Subproject < ActiveRecord::Base
  belongs_to :project
  has_many :tasks
  # has_many :subprojects
  has_one :employee
  def self.get_id
    if Subproject.exists?(&:id)
      id = Subproject.maximum(:id)
      id += 1
      return id
    else
      id = 0
      id += 1
      return id
    end

  end
end
