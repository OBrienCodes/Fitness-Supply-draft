class User < ApplicationRecord
    has_many :reviews 
    has_many :lists 
    has_many :workouts, through: :reviews 
    has_many :workouts, through: :lists 
end
