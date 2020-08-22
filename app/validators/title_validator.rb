class TitleValidator < ActiveModel::Validator
    def validate(record)
        clickbait_patterns = [/Won't Believe/, /Secret/, /Top [number]/, /Guess/]

        if clickbait_patterns.none? { |pattern| pattern.match(record.title)}
            record.errors[:title] << "Not clickbait"
        end
    end
end