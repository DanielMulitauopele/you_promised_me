require 'rails_helper'

describe 'user can add a new promise' do
  it "should link to new promise page from index page" do
    visit root_path

    click_on "Track new promise!"

    expect(current_path).to eq(new_promise_path)
  end
  it 'should allow user to send post action' do
    visit new_promise_path

    fill_in 'promise[text]', with: "New Promise Information!"

    click_on 'Submit'

    expect(current_path).to eq(root_path)
    expect(page).to have_content("New Promise Information!")
  end
end
