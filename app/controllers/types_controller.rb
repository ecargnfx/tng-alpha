class TypesController < ApplicationController

  def show
    @type = Type.find(params[:id])
    @type_components = @type.component_types.sort_by(&:position)
    @components = @type_components.map(&:component)
  end
end
