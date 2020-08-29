class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    validate :clickbait

    def clickbait
        bait = ["Won't Believe", "Secret", "Guess", "Number"]
        if title
            unless title.include?(bait[0]) || title.include?(bait[1]) || title.include?(bait[2]) || title.include?(bait[3])
                errors.add(:title, "must be clickbait.")
            end
        end
    end

end
