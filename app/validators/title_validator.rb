class TitleValidator < ActiveModel::Validator
    def validate(record)
        clickbait = [/Won't Believe/, /Secret/, /Top [number]/, /Guess/]
        if clickbait.none? { |x| x.match(record.title)}
            record.errors[:title] << "Please make this more clickbait-y."
        end
    end
end