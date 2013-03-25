require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
  	before { visit '/static_pages/home' }
  	it { should have_selector('h1', text: 'Lasrtag') }
  	it { should have_selector('title', text: 'Lasrtag | Home') }
  end

  describe "Help page" do
  	before { visit '/static_pages/help' }
  	it { should have_selector('h1', text: 'Help') }
  	it { should have_selector('title', text: 'Lasrtag | Help') }
  end
end