require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end

  it "should have a News page at '/news'" do
    get '/news'
    response.should have_selector('title', :content => "News")
  end

  it "should have an Research page at '/research'" do
    get '/research'
    response.should have_selector('title', :content => "Research")
  end

  it "should have a About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end

it "should have a signup page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Sign Up")
  end

it "should have the right links on the layout" do
    visit root_path
    click_link "Home"
    response.should have_selector('title', :content => "Home")
    click_link "News"
    response.should have_selector('title', :content => "News")
    click_link "Research"
response.should have_selector('title', :content => "Research")    

click_link "Home"
    response.should have_selector('title', :content => "Home")


    click_link "Sign up now!"
    response.should have_selector('title', :content => "Sign Up")
  end



end


