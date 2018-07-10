require 'rails_helper'

RSpec.feature "Posts management", type: :feature do
  scenario "user creates a valid post" do
    visit "/posts/new"

    fill_in "post[title]", with: "Awesome title"
    fill_in "post[body]", with: "Post body"
    click_button "Create Post"

    expect(page).to have_text("Awesome title")
  end

  scenario "user creates a invalid post" do
    visit "/posts/new"

    fill_in "post[title]", with: "Awesome title"
    click_button "Create Post"

    expect(page).to have_text("Create a new post")
  end
end
