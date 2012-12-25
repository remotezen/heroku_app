require 'spec_helper'
#####################################################3333
describe "StaticPages" do
  subject{ page }
  let(:base_title){ "Heroku App | " }
  describe "GET /static_pages" do
    describe "Home page"  do
      before{visit home_path}
      it { should have_selector 'h3',
        text: 'Home'
      }
      it { should have_selector 'title',
         text: full_title('Home') 
      }
    end
    ###########################################333
    describe "Help page" do
      before {visit help_path}
        it { should have_selector 'title', text: full_title('Help') }
        it { should have_selector 'h3', text: "Help" }
      end
    describe "About page" do
      before {visit about_path}

        
      it { should have_selector( 'title', 
                                  text: full_title("About Us") ) 
        }
        
        it { should have_selector 'h3',
                                   text: "About Us" 
        }
    end
    ########################################################3
    describe "Contact Page" do
      before { visit contact_path }
        it { should have_selector 'title', 
          text: full_title('Contact Us') 
        }
        it { should have_selector  'h3', 
          text: "Contact Us"  
        }
      end
    end
   end
