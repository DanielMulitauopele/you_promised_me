require 'rails_helper'

describe 'user can update existing promise' do
  before (:each) do
    @promise1 = Promise.create!(text: "I'll eat 50 sushi rolls")
    @promise2 = Promise.create!(text: "I'll pay you $50 bucks if you actually do it")
  end

  it "should link user to update page from show page" do
    visit promise_path(@promise2)

    click_on 'Edit Promise'

    expect(current_path).to eq(edit_promise_path(@promise2))
    expect(page).to have_content("Edit Promise ##{@promise2.id}")
  end
  it "should allow user to edit exisiting promise" do
    visit edit_promise_path(@promise1)

    fill_in 'promise[text]', with: "Just kidding. I'll eat 40 sushi."
    click_on 'Submit'

    expect(current_path).to eq(promise_path(@promise1))
    expect(page).to have_content("Just kidding. I'll eat 40 sushi.")
  end
end
