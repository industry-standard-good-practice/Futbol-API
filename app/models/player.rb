# Model for handling individual players in the database.
# Includes descriptive details about each individual model.
class Player < ApplicationRecord
  validates :name, :height, :weight, :age, :country, :shirt, :position, presence: true
end
