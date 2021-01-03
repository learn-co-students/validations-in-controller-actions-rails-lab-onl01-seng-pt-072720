class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 10, too_short: "Your post cannot be shorter than %{count} characters."}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
end
