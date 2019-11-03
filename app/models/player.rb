class Player < ApplicationRecord
  belongs_to :club, :optional => true
  belongs_to :confederation
  belongs_to :user
end
