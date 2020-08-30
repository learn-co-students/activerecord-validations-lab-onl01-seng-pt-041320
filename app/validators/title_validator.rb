class TitleValidator < ActiveModel::Validator
    

    def validate(record)
        if record.title.present?
            unless record.title.include?("Won't Believe") || record.title.include?("Top") || record.title.include?("Secret") || record.title.include?("Guess") 
            record.errors[:title] << "must be clickbait"
            end 
        else
            record.errors[:title] << "there must be a title"
        end
    end

end
