require 'rails_helper'

RSpec.describe 'API V1 Routes', type: :routing do
  describe 'User routes' do
    it 'routes to users#index' do
      expect(get: '/api/v1/users').to route_to('api/v1/users#index', format: 'json')
    end

    it 'routes to users#create' do
      expect(post: '/api/v1/users').to route_to('api/v1/users#create', format: 'json')
    end
  end
end
