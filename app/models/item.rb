class Item < ApplicationRecord
    belongs_to :list
    validates :description, :presence => true 

    STATUS = {
        :complete => true,
        :incomplete => false 
    }

    def complete?
        self.status == STATUS[:complete]
    end 

    def incomplete?
        self.status == STATUS[:incomplete]
    end 

end
