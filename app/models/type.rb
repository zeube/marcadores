class Type < ApplicationRecord
  belongs_to :category
  belongs_to :parent, class_name: 'Type', optional: true, foreign_key: :category_id
  
  has_many :children, class_name: 'Type', dependent: :destroy
  has_many :bookmarks
end
