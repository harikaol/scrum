class Issue < ActiveRecord::Base
  belongs_to :project
  belongs_to :subproject
  belongs_to :task
end
