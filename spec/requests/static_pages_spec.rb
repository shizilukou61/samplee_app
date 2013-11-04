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

   #let(:base_title) { "Ruby on Rails Tutorial Sample App" }

   subject { page } 
  
   #包含一个describe块
   describe "Home page" do 
     before { visit root_path }
        
       it { should have_content('Sample App') } 
       it { should have_title(full_title(''))}
       #it { should have_title("#{base_title} | Home")}
       
       #it { should_not have_title('| Home') }
      #it "..." do 开头的代码块就是一个用例
     #it "should have the content 'Sample App'" do
  	    #使用了Capybara中的visit函数来模拟在浏览器中访问/static_pages/home的操作
    	  #visit '/static_pages/home'
        #visit root_path
	      #expect(page).to have_content('Sample App')
      end
=begin     
     it "should have the right title" do
	      #visit '/static_pages/home'
        visit root_path
 	      #expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
  	    expect(page).to have_title("#{base_title} | Home")
     end


     it "should not have a custome page title" do 
       #visit '/static_pages/home'
       visit root_path
       expect(page).not_to have_title('| home')
     end
   end
=end
  
  describe "Help page" do
    before { visit help_path }


    it { should have_content('Help')}
    it { should have_title(full_title('Help'))}

=begin
    it "should have the content 'Help'" do
	    #visit '/static_pages/help'
      #visit help_path
	    expect(page).to have_content('Help')
    end
    
    it "should have the titile 'Help'" do
	    #visit '/static_pages/help'
      #visit help_path
    	expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
=end
  end
  describe "About page" do
    before { visit about_path }

    it { should have_content('About Us')}
    it { should have_title(full_title('About Us'))}
=begin
    it "should have the content 'About us'" do
   	#visit '/static_pages/about'
      #visit about_path
	    expect(page).to have_content('About Us')
    end

    it "should have the title 'About us'" do
	    #visit '/static_pages/about'
      #visit about_path
	    expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
=end
  end

  describe "Contact" do 
    before { visit contact_path }

    #it { should have_content('Contact Us')}
    it { should have_selector('h1', text: 'Contact Us')}
    it { should have_title(full_title('Contact Us'))}
   
=begin
    it "should have the content 'Contact Us'" do 
	    #visit '/static_pages/contact'
      #visit contact_path
	    expect(page).to have_content('Contact Us')
    end
    
    it "should have the title 'Contact us'" do 
	    #visit '/static_pages/contact'
      #visit contact_path
	    expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact Us")
    end
=end
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))

    click_link "Contact"
    expect(page).to have_title(full_title('Contact Us'))
    
    click_link "Home"

    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign up')) 
  end
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

   #let(:base_title) { "Ruby on Rails Tutorial Sample App" }

   subject { page } 
  
   #包含一个describe块
   describe "Home page" do 
     before { visit root_path }
        
       it { should have_content('Sample App') } 
       it { should have_title(full_title(''))}
       #it { should have_title("#{base_title} | Home")}
       
       #it { should_not have_title('| Home') }
      #it "..." do 开头的代码块就是一个用例
     #it "should have the content 'Sample App'" do
  	    #使用了Capybara中的visit函数来模拟在浏览器中访问/static_pages/home的操作
    	  #visit '/static_pages/home'
        #visit root_path
	      #expect(page).to have_content('Sample App')
      end
=begin     
     it "should have the right title" do
	      #visit '/static_pages/home'
        visit root_path
 	      #expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
  	    expect(page).to have_title("#{base_title} | Home")
     end


     it "should not have a custome page title" do 
       #visit '/static_pages/home'
       visit root_path
       expect(page).not_to have_title('| home')
     end
   end
=end
  
  describe "Help page" do
    before { visit help_path }


    it { should have_content('Help')}
    it { should have_title(full_title('Help'))}

=begin
    it "should have the content 'Help'" do
	    #visit '/static_pages/help'
      #visit help_path
	    expect(page).to have_content('Help')
    end
    
    it "should have the titile 'Help'" do
	    #visit '/static_pages/help'
      #visit help_path
    	expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
=end
  end
  describe "About page" do
    before { visit about_path }

    it { should have_content('About Us')}
    it { should have_title(full_title('About Us'))}
=begin
    it "should have the content 'About us'" do
   	#visit '/static_pages/about'
      #visit about_path
	    expect(page).to have_content('About Us')
    end

    it "should have the title 'About us'" do
	    #visit '/static_pages/about'
      #visit about_path
	    expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
=end
  end

  describe "Contact" do 
    before { visit contact_path }

    #it { should have_content('Contact Us')}
    it { should have_selector('h1', text: 'Contact Us')}
    it { should have_title(full_title('Contact Us'))}
   
=begin
    it "should have the content 'Contact Us'" do 
	    #visit '/static_pages/contact'
      #visit contact_path
	    expect(page).to have_content('Contact Us')
    end
    
    it "should have the title 'Contact us'" do 
	    #visit '/static_pages/contact'
      #visit contact_path
	    expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact Us")
    end
=end
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))

    click_link "Contact"
    expect(page).to have_title(full_title('Contact Us'))
    
    click_link "Home"

    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign up')) 
  end
end

 
end

 
