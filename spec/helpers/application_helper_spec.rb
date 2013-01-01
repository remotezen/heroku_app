require 'spec_helper'
describe ApplicationHelper do
  describe "full_title" do
    it "should include the page title"  do
      full_title("Foo").should =~ /Foo/
    end
    it "should include the base title" do
      full_title("Foo").should =~ /Heroku App/
    end
  end
end
