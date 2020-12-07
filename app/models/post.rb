class Post < ActiveRecord::Base
    validates :title, presence: { message: "must include a title" } 
    validates :category, inclusion: { in: ["Fiction", "Non-Fiction"], message: 'Category must be "Fiction" or "Non-Fiction".' }
    validates :content, length: { minimum: 100, message: "Post must be at least 100 characters." }
end
