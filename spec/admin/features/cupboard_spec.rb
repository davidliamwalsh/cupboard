require "rails_helper"

RSpec.describe "Cupboard", type: :feature do
  include BasicAuthHelper

  before(:each) do
    log_in
  end

  context "creating a cupboard" do

    describe "viewing all cupboards" do
      it "should show a list of cupboards" do
        visit admin_cupboards_path

        create_list(:cupboard)

        expect(page).to have_content(@cupboards)
      end
    end

  end
end