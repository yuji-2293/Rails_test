class Color < ApplicationRecord
    belongs_to :user
    validates :mood_color_id, presence: true


    COLORS ={
    1 => "bg-red-300",
    2 => "bg-red-500",
    3 => "bg-orange-300",
    4 => "bg-orange-500",
    5 => "bg-yellow-300",
    6 => "bg-yellow-500",
    7 => "bg-green-300",
    8 => "bg-green-500",
    9 => "bg-blue-300",
    10 => "bg-blue-500",
    11 => "bg-purple-300",
    12 => "bg-purple-500",
    13 => "bg-white",
    14 => "bg-black"
}.freeze

    def self.class_for_id(color_id)
        COLORS[color_id] || 'bg-gray-500'
    end
end
