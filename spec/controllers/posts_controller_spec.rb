require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  context 'GET #index' do
    it 'returns a success response' do
      get :index
      expect(response).to be_successful
    end

    it 'renders the correct template' do
      get :index
      expect(response).to render_template(:index)
    end
  end

  context 'GET #new' do
    it 'returns a success response' do
      get :new
      expect(response).to be_successful
    end

    it 'renders the correct template' do
      get :new
      expect(response).to render_template(:new)
    end
  end

  context 'GET #show' do
    it 'return a success response' do
      post = Post.create!(title: 'Post title', body: 'Post body')
      get :show, params: { id: post.to_param }
      expect(response).to be_successful
    end

    it 'renders the correct template' do
      post = Post.create!(title: 'Post title', body: 'Post body')
      get :show, params: { id: post.to_param }
      expect(response).to render_template(:show)
    end
  end

  context 'GET #edit' do
    it 'returns a success response' do
      post = Post.create!(title: 'Post title', body: 'Post body')
      get :edit, params: { id: post.to_param }
      expect(response).to be_successful
    end

    it 'renders the correct template' do
      post = Post.create!(title: 'Post title', body: 'Post body')
      get :edit, params: { id: post.to_param }
      expect(response).to render_template(:edit)
    end
  end
end
