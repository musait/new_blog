class Post < ApplicationRecord
    has_many :comments, as: :commentable, dependent: :destroy
    has_and_belongs_to_many :categories

end
