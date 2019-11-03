class Confederation < ApplicationRecord
  has_many :clubs
  has_many :players
  has_many :stadiums
  
end
