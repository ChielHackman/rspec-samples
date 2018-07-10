require 'rails_helper'

RSpec.feature "Posts management", type: :feature do
  scenario "user destroys a existing post" do
    post = Post.create!(title: 'Awesome title', body: 'Post body')
    visit "posts/#{post.id}"

    click_link "Delete post"

    expect(page).to have_text("There are no posts")
  end
end
