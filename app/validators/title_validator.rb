class TitleValidator < ActiveModel::Validator
    def validate(record)
        unless record.title && record.title.split(" ").any?{|x| ["Won\'t", "Believe", "Secret", "Top", "Guess"].include?(x)}
            record.errors[:title] << "Not click-baity enough"
        end
        
    end  
end