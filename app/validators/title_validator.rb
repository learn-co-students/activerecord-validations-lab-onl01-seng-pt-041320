class TitleValidator < ActiveModel::Validator 

  def validate(record)
    if record.title 
      parts = ["Won't Believe", "Secret", "Top [number]", "Guess"]
      if parts.detect { |bit| record.title.include?(bit) }.nil? 
        record.errors[:title] << "Really should BE clickbait"
      end
    end
  end

end