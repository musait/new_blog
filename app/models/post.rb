class Post < ApplicationRecord
    has_many :comments 
    has_and_belongs_to_many :categories 
    
end
