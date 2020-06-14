class Categorization < ApplicationRecord
    belongs_to :category
    belongs_to :item

    def item_name
        item.description
    end 

    def category_name
        category.name
    end 

end
