class Component < ActiveRecord::Base
  attr_accessible :content, :name
  has_many :component_types
  has_many :types, through: :component_types
end