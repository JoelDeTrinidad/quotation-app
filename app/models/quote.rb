class Quote < ApplicationRecord
    belongs_to :coin
    def self.filter(filter)
        if filter
          where(["refernce LIKE ?","%#{filter}%"]).order('created_at DESC')
          else
           filter = 'EUR'
           where(["refernce LIKE ?","%#{filter}%"]).order('created_at DESC')
        end
      end
end
