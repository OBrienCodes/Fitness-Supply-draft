class Workout < ApplicationRecord
    has_many :reviews 
    has_many :lists 
    has_many :users, through: :reviews 
    has_many :users, through: :lists 
end
