class Idea < ApplicationRecord
    validates :title, presence: true
    validates :discription, length: { minimum: 10}
    has_many :comments
end