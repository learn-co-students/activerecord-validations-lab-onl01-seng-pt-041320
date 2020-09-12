class TitleValidator < ActiveModel::Validator
    def validate(record)
        unless record.title =~ /(Won't Believe|Secret|Top \d|Guess)/
            record.errors[:title] << "The Post title must be clickbait."

        end
    end
end
