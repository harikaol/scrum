class Project < ActiveRecord::Base
has_one :employee
has_many :subprojects
end
