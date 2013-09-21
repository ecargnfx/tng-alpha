class Type < ActiveRecord::Base
  attr_accessible :name
  has_many :component_types
  has_many :components, through: :component_types
end
