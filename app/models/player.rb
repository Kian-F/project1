class Player < ApplicationRecord
  belongs_to :club, :optional => true
  belongs_to :confederation, :optional => true
  belongs_to :user, :optional => true
end
