module PostHelper
  def render_posts
    unless @posts.any?
      return "There are no posts"
    end
  end
end
