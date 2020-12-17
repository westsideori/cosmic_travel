class Scientist < ApplicationRecord
    has_many :missions
    has_many :planets, through: :missions

    validates :name, uniqueness: true
    validates :name, presence: true
    validates :field_of_study, presence: true

    def mission_for_planet
        
    end
end
