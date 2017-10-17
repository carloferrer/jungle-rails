require 'rails_helper'

RSpec.feature "Visitor clicks 'add' and My Cart increases by 1", type: :feature, js: true do

  # SETUP
  before :each do
  # before :all do
    @category = Category.create! name: 'Apparel'

    1.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "They see My Cart (1)" do
    # ACT
    visit root_path
    click_on 'Add'

    # DEBUG
    # save_screenshot
    puts page.html
    # VERIFY
    expect(page).to have_content("My Cart (1)")
  end

end