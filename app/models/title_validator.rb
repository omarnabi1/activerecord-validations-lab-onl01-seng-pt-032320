class TitleValidator <ActiveModel::Validator
    
    
    
    def validate(record)
        if record.title
            unless record.title.match?(/Secret|Won't Believe|Top [0-9]*|Guess/i)
                record.errors[:title] << "Clickbait!"
            end
        end
    end

    
 end