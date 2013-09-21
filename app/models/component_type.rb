class ComponentType < ActiveRecord::Base
  attr_accessible :component_id, :type_id, :position
  belongs_to :component
  belongs_to :type
end
