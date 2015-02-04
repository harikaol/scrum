class Task < ActiveRecord::Base
  belongs_to :subproject
  belongs_to :project
  has_one :employee
  def self.get_id
    if Task.exists?(&:id)
      id = Task.maximum(:id)
      id += 1
      return id
    else
      id = 0
      id += 1
      return id
    end

  end
end
