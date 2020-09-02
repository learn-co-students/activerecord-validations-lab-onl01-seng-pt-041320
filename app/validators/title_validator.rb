class TitleValidator < ActiveModel::Validator
    
    def validate(record)
        string = [/Won't Believe/i, /Secret/i, /Top[0-9]/i, /Guess/i]
        
        if string.none?{|word| word.match(record.title)}
            record.errors[:title] << "Not a clickbait title"
        end
    end
    
end