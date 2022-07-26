require 'rails_helper'

RSpec.describe 'Users Controller', type: :request do
  describe 'GET /index' do
    context 'when the page is loaded' do
      before do
        get '/users'
      end
      it 'returns a 200 status code' do
        expect(response).to have_http_status(200)
      end
      it 'renders the index template' do
        expect(response).to render_template('index')
        expect(response.body).to render_template('index')
      end
      it 'includes number of posts' do
        expect(response.body).to include('Number of posts')
      end
    end
  end

  describe 'GET /show' do
    context 'when the page is loaded' do
      before do
        get '/users/1'
      end
    end
  end
end
