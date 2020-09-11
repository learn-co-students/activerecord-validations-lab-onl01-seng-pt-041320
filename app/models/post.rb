class Post < ActiveRecord::Base
    validate :is_clickbait?
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction),
    message: "%{value} is not a valid category" }

    def is_clickbait?
        if title.blank? || title.exclude?("Won't Believe"|| "Secret" || "Top [number]" || "Guess")
            errors.add(:title, "must be clickbait")
        end 
    end 
end