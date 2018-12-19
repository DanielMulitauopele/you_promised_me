require "rails_helper"

describe 'user can delete a promise' do
  before (:each) do
    @promise1 = Promise.create!(text: "I'll eat 50 sushi rolls")
    @promise2 = Promise.create!(text: "I'll pay you $50 bucks if you actually do it")
  end
  it "should remove promise from db" do
    visit promise_path(@promise1)

    click_on 'Delete Promise'

    expect(current_path).to eq(root_path)
    expect(page).to have_content("All Promises")
    expect(page).to_not have_content("Promise ##{@promise1.id}")
    expect(page).to_not have_content("Promise ##{@promise1.text}")
  end
end
