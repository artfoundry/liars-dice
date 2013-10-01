require 'spec_helper.rb'

describe "starting the game", :type => :feature do
  it "takes user to the gameplay page" do
    visit '/'
    click_button('Play Liars Dice!')
    page.should have_content 'Your dice rolls'
  end

  it "prints the users name on the gameplay page as entered on the login page" do
    visit '/'
    fill_in('name', :with => 'Dave')
    click_button('Play Liars Dice!')
    page.should have_content 'Dave'
  end
end

describe "quitting the game", :type => :feature do
  it "takes user to the login page" do
    visit '/'
    fill_in('name', :with => 'Dave')
    click_button('Play Liars Dice!')
    click_button('Quit Game')
    page.should have_content 'Enter your name'
  end
end