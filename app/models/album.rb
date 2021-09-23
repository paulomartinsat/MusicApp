class Album < ApplicationRecord
  resourcify
    belongs_to :artist

    
    validates :year, presence: true, numericality: { only_integer: true, greater_than: 1980, less_than: 2021}
    
end
