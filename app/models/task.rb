class Task < ActiveRecord::Base
belongs_to: subproject
has_one: employee
end
