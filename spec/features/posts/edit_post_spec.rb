require 'rails_helper'

RSpec.feature "Posts management", type: :feature do
  scenario "user edits a post with valid params" do
    post = Post.create!(title: 'Awesome title', body: 'Post body')
    visit "posts/#{post.id}/edit"

    fill_in "post[title]", with: "Edited awesome title"
    click_button "Update Post"

    expect(page).to have_text("Edited awesome title")
  end

  scenario "user edits a post with invalid params" do
    post = Post.create!(title: 'Awesome title', body: 'Post body')
    visit "posts/#{post.id}/edit"

    fill_in "post[body]", with: ""
    click_button "Update Post"

    expect(page).to have_text("Edit post #{post.title}")
  end
end
