require 'rails_helper'

RSpec.describe "index" do
  it "lists all posts" do
    assign(:posts, [
      Post.create!(title: "Post title", body: "Post body"),
      Post.create!(title: "Post title 1", body: "Post body 1")
    ])

    render template: "posts/index.html.erb"

    expect(rendered).to match /Post title/
    expect(rendered).to match /Post title 1/
  end
end
