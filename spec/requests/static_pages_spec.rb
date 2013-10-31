require 'spec_helper'

=begin
describe "StaticPages" do
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_index_path
      response.status.should be(200)
    end
  end
end
=end

describe "Static pages" do

   let(:base_title) { "Ruby on Rails Tutorial Sample App" }
   #包含一个describe块
   describe "Home page" do 
      #it "..." do 开头的代码块就是一个用例
     it "should have the content 'Sample App'" do
  	    #使用了Capybara中的visit函数来模拟在浏览器中访问/static_pages/home的操作
    	  visit '/static_pages/home'
	      expect(page).to have_content('Sample App')
      end
     
     it "should have the right title" do
	      visit '/static_pages/home'
 	      #expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
  	    expect(page).to have_title("#{base_title} | Home")
     end


     it "should not have a custome page title" do 
       visit '/static_pages/home'
       expect(page).not_to have_title('| home')
     end
   end
  
  describe "Help page" do
    it "should have the content 'Help'" do
	visit '/static_pages/help'
	expect(page).to have_content('Help')
    end
    
    it "should have the titile 'Help'" do
	visit '/static_pages/help'
	expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end
  
  describe "About page" do
    it "should have the content 'About us'" do
   	visit '/static_pages/about'
	expect(page).to have_content('About Us')
    end

    it "should have the title 'About us'" do
	visit '/static_pages/about'
	expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end

  describe "Contact" do 
    it "should have the content 'Contact Us'" do 
	visit '/static_pages/contact'
	expect(page).to have_content('Contact Us')
    end
    
    it "should have the title 'Contact us'" do 
	visit '/static_pages/contact'
	expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact Us")
    end
  end
end

 
