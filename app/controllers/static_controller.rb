class StaticController < ApplicationController
  def create
    @static = Static.create(url: params[:url], content: params[:content])
    # if @static.saved?
    render json: {status: 200, url: display_static_url(url: @static.url), errors: []}
    # else
    #   render json: {status: 500, url: nil, errors: @static.errors}
    # end
  end

  def show
    @content = Static.find_by_url(params[:url]).content
    render layout: false
  end
end
