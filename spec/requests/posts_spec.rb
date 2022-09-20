require 'rails_helper'

RSpec.describe 'Posts Page', type: :request do
  describe 'GET /posts/index' do
    before(:example) { get '/posts' }
    it 'the path works' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders the index template' do
      expect(response).to render_template(:index)
    end

    it 'displays the placeholder text' do
      expect(response.body).to include('This is the posts page')
    end
  end

  describe 'GET /posts/show' do
    before(:example) { get '/posts/1' }
    it 'the path works' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders the show template' do
      expect(response).to render_template(:show)
    end

    it 'displays the placeholder text' do
      expect(response.body).to include('This is a single post page')
    end
  end
end
