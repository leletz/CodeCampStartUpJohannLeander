class Idea < ApplicationRecord
    validates :title, presence: true
    validates :discription, presence: true
    has_many :comments
end