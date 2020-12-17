class Planet < ApplicationRecord
    has_many :missions
    has_many :scientists, through: :missions

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :distance_from_earth, presence: true
    validates :nearest_star, presence: true
    validates :planet_img, presence: true
end
