class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :possts

    validates :name, uniqueness: true
    validates :age, numericality: { greater_than: 0 }
    validates(:bio, { :length => { :minimum => 500 } })
end
