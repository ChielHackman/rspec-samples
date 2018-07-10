require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'validation tests' do
    it 'validates title presence' do
      post = Post.new(body: 'New post body').save
      expect(post).to eq(false)
    end

    it 'validates body presence' do
      post = Post.new(title: 'New post title').save
      expect(post).to eq(false)
    end

    it 'should save successfully' do
      post = Post.new(title: 'New post title', body: 'New post body').save
      expect(post).to eq(true)
    end
  end

  context 'scope tests' do
    let (:params) { {title: 'Post title', body: 'Post body'} }
    before(:each) do
      Post.new(params).save
      Post.new(params).save
      Post.new(params.merge(active: true)).save
    end

    it 'returns active posts' do
      expect(Post.active_posts.size).to eq(1)
    end

    it 'returns inactive posts' do
      expect(Post.inactive_posts.size).to eq(2)
    end
  end
end
