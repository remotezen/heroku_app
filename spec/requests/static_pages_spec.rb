require 'spec_helper'

describe "StaticPages" do
  let(:base_title){ "Heroku App | " }
  describe "GET /static_pages" do
    describe "Home page"  do
  
      it "should have the content Heroku app" do 
        visit '/static_pages/home'
        page.should have_content('Heroku App')
      end
      it "should have h3 content home" do
        visit '/static_pages/home'
        page.should have_selector('h3',
                                  text: "Home"
                                 )

      end
      it "should have the right title" do
        visit '/static_pages/home'
        page.should have_selector('title',
                                 text: "#{base_title}Home")
      end

    end
    describe "Help page" do
      it "should have the Help page for Heroku app" do
        visit '/static_pages/help'
        page.should have_selector('title',

                                 text: "#{base_title}Help"
                                 )
      end
      it "should Help text inside a h3 tag" do
        visit '/static_pages/help'
        page.should have_selector('h3',
                                 text: "Help")
      end
    end
    describe "About page" do
      it "should have the content 'About Us' " do
        visit '/static_pages/about'
        page.should have_selector('title', 
                                 text: "#{base_title}About Us"
                                 )
      end
    end
  end
end
