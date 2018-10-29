class Deal < ActiveRecord::Base
    
    belongs_to :business
    belongs_to :orginization
    
    def status
        return (biz_accepted and org_accepted)
    end
    
    def self.search(search)
        where("LOWER(name) LIKE ?", "%#{search.downcase}%") 
    end
end
