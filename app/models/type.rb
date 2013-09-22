class Type < ActiveRecord::Base
  attr_accessible :name
  has_many :component_types
  has_many :components, through: :component_types

  def add_component position, component_id
    component_types << ComponentType.create(component_id: component_id, type_id: id, position: position)
  end

end