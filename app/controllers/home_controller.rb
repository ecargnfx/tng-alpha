require 'AlchemyAPI'
class HomeController < ApplicationController

  def generate
    alchemy = AlchemyAPI.new("2094dd01fd7cbceb7e1bb916840e40e81f25d16f")
    results = alchemy.textGetRankedKeywords(params[:q])
    marketing = ['marketing', 'web page', 'webpage', 'info', 'information', 'informative', 'business', 'advertise', 'advertisement', 'advertis', 'event', 'promot']
    blog = ['blog', 'post', 'blog post', 'journal', 'timeline', 'diary', 'list']
    contact = ['contact', 'message', 'about', 'email']
    landing = ['landing', 'splash', 'customer discovery', 'teaser']
    login = ['login', 'sign in', 'user', 'sign', 'auth']
    ecommerce = ['ecommerce', 'e-commerce', 'sales', 'store', 'sell', 'things', 'products', 'commerce', 'market']

    if (checkForType results, marketing)
      type = Type.find_by_name('marketing')
    elsif (checkForType results, blog)
      type = Type.find_by_name('blog-post')
    elsif (checkForType results, contact)
      type = Type.find_by_name('contact')
    elsif (checkForType results, landing)
      type = Type.find_by_name('landing')
    elsif (checkForType results, login)
      type = Type.find_by_name('login')
    elsif (checkForType results, ecommerce)
      type = Type.find_by_name('ecommerce')
    else
      type = Type.find_by_name('base')
      flash[:notice] = "We couldn't work out what you wanted, but here's a basic layout to get started."
    end

    redirect_to show_page_path(type.id)
  end

  def checkForType keywords, array
    array.each do |elem|
      keywords.each do |keyword|
        return true if keyword.include? elem
      end
    end
    return false
  end

  def index
  end

  def minor
  end


end
