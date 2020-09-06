class TitleValidator < ActiveModel::Validator
    def validate(record)
      if record.title
        clickbait = ["Won't Believe", "Secret", "Top [number]", "Guess"]
          if clickbait.detect{|i| record.title.match?(i)}
      else
        record.errors[:title] << "not clickbait"
          end
      end
    end
end