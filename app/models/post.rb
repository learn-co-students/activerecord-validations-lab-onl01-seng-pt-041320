class Post < ActiveRecord::Base

    validates :summary, length: {minimum: 3, maximum: 250}
    validates :content, length: {minimum: 250}
    validates :category, inclusion: {in: %w(Fiction Non-Fiction) }
    validates :title, format: {with: /Won't Believe|Secret|Top \d|Guess/}
    
end
