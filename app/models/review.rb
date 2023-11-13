class Review < ApplicationRecord
    validates :rating, presence: true
    validates :content, length: {maximum: 5000}

    belongs_to: user
    belongs_to: restaurant

end
