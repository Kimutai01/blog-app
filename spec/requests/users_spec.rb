require 'rails_helper'

RSpec.describe 'Users Page', type: :request do
  describe 'GET /users/index' do
    before(:example) { get '/users' }
    it 'the path works' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders the index template' do
      expect(response).to render_template(:index)
    end

    it 'displays the placeholder text' do
      expect(response.body).to include('This is the users page')
    end
  end

  describe 'GET /users/show' do
    before(:example) { get '/users/1' }
    it 'the path works' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders the show template' do
      expect(response).to render_template(:show)
    end

    it 'displays the placeholder text' do
      expect(response.body).to include('This is a single user page')
    end
  end
end
