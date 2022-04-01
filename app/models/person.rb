class Person < ApplicationRecord
    belongs_to :parent, class_name: "Person", optional: true

    def children_name
        Person.where(parent: self)
    end
    def grandchildren
        Person.where(parent_id: children_name.pluck(:id))
    end
    
end
