class User < ApplicationRecord
    belongs_to :project
    belongs_to :skill
  
end
