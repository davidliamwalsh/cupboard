require "rails_helper"

RSpec.describe "Static page", type: :feature do

  describe "index page" do

    it "should have content" do

      visit root_path

      expect(page).to have_button('Login')
      page.should have_selector(:link_or_button, 'Login')
    end
  end
end