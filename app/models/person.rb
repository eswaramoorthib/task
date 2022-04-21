class Person < ApplicationRecord

    has_many :children, foreign_key: "parent_id", class_name: "Person"
    belongs_to :parent, class_name: "Person", optional: true
    has_many :grandchildren, through: :children, source: :children
    # belongs_to :person, through: :children

    # def children_name
    #     Person.where(parent: self)
    # end
    # def grandchildrens
    #     Person.where(parent_id: children_name.pluck(:id))
    # end
        
end
