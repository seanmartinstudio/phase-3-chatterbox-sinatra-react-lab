class Message < ActiveRecord::Base
    
    
    def self.all_messages
        self.all.order(:body)
    end


end