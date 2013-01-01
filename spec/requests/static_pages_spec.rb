require 'spec_helper'
#####################################################
describe "StaticPages" do
  subject{ page }
  shared_examples_for "all static pages" do
    it { should have_selector 'title', text: full_title(page_title) }
    it { should have_selector 'h3', text: heading}
  end
  let(:base_title){ "Heroku App | " }
  describe "GET /static_pages" do
    describe "Home page"  do
      before{visit home_path}
      let(:heading) { 'Home' }
      let(:page_title) { 'Home' }
      it_should_behave_like "all static pages"
    end
    ###########################################
    describe "Help page" do
      before {visit help_path}
        let(:heading) {'Help'}
        let(:page_title){ 'Help' } 
        it_should_behave_like "all static pages"
      end
    describe "About page" do
      before {visit about_path}
      let(:heading){ "About Us" }
      let(:page_title){ 'About Us' }
      it_should_behave_like "all static pages"
    end
    ########################################################
    describe "Contact Page" do
      before { visit contact_path }
      let(:heading){ "Contact Us" }
      let(:page_title){ 'Contact Us' }
      it_should_behave_like "all static pages"
      end
    end
    it "should have the right links on the layout" do
      visit root_path
      click_link "About"
      page.should have_selector 'title', text: full_title("About Us")
      click_link "Contact"
      page.should have_selector 'title', text: full_title("Contact Us")
      click_link "Home"
      page.should have_selector 'title', text: full_title("Home")
      click_link "Sign up"
      page.should have_selector 'title', text: full_title("Sign up")
    end
end
