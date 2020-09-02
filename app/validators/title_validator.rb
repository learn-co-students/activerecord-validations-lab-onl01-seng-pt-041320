class TitleValidator < ActiveModel::Validator
    
    def validate(record)
        unless record.title.match?(/Won't Believe Secret Top[number] Guess/)
            record.errors[:title] << "Title must Won't Believe, Secret, Top[number], or Guess"
        end
    end
    
end