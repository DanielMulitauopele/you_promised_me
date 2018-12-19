require 'rails_helper'

describe 'user sees show page' do
  before (:each) do
    @promise = Promise.create!(text: "I'm gonna make it big in the league")
  end

  it "should list a single promise" do
    visit promise_path(@promise.id)

    expect(page).to have_content("Promise ##{@promise.id}")
    expect(page).to have_content(@promise.text)
  end
end
