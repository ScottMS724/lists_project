class Item < ApplicationRecord
    belongs_to :list
    has_many :categorizations 
    has_many :categories, :through => :categorizations 
    validates :description, :presence => true, length: { maximum: 30 }
    accepts_nested_attributes_for :categorizations 

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
