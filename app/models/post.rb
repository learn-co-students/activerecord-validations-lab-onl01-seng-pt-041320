class Post < ActiveRecord::Base
  #include ActiveModel::Validations
  #validates_with PostValidator
  validates :title, presence: true 
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction),
    message: "%{value} is not a valid size" }
  validate :is_clickbaitable?

    def is_clickbaitable?
      @titles = [/Won't Believe/i, /Secret/i, /Top/i, /Guess/i]
      if @titles.none?{ |click|  click.match title }
        errors.add(:title, "Must be clickbait!")
      end
    end
end
