require 'rails_helper'

describe 'user sees index page' do
  before (:each) do
    @promise1 = Promise.create!(text: "I'll be there at 8")
    @promise2 = Promise.create!(text: "I didn't eat the chicken")
  end

  it 'should list out all promises' do
    visit '/'

    expect(page). have_content('All Promises')
    expect(page).to have_content(@promise1.text)
    expect(page).to have_content(@promise2.text)
  end
end
