class PagesController < ApplicationController
  def home
@title = "Home"

  end

  def research

@title = "Research"
  end

  def news
@title = "News"  
end

  def about
@title = "About"  
end


end
