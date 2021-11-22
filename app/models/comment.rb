class Comment < ApplicationRecord
    validates :name, presence: true
    validates :text, length: {minimum: 10 }
    belongs_to :idea
end