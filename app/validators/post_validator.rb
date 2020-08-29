class PostValidator < ActiveModel::Validator
    def validate(record)
        # binding.pry
        # CLICKBAIT_PATTERNS = [/Won't Believe/i,/Secret/i,/Top[0-9]*/i,/Guess/i]
        # binding.pry
        # unless value =~ /\b(Won't Believe|Secret|Top \d|Guess)\b/
        #     record.errors[attribute] << "This isnt clickbate"
        # end
    
        if [/Won't Believe/i,/Secret/i,/Top[0-9]*/i,/Guess/i].none?{|pattern|pattern.match(record.title)}
        record.errors[:title] << "This isnt clickbate"
      end
    end
  end