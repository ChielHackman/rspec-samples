require 'rails_helper'

RSpec.describe "show" do
  it "shows the correct post" do
    assign(:post, Post.create!(title: "Post title", body: "Post body"))

    render template: "posts/show.html.erb"

    expect(rendered).to match /Post title/
  end
end
