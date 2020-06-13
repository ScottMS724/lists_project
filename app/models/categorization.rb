class Categorization < ApplicationRecord
    belongs_to :category, inverse_of: :categorizations
    belongs_to :item, inverse_of: :categorizations

    def item_name
        item.description
    end 

    def category_name
        category.name
    end 

end
