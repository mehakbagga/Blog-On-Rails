class Post < ApplicationRecord

    has_many :comments, dependent: :destroy 
    
    validates :title, presence: { message: "must be provided" }, uniqueness: true
    validates :body, presence: { message: "must be atleast 50 characters" }, length: {minimum: 50}
end
