require 'rails_helper'

RSpec.describe 'API V1 Routes', type: :routing do
  describe 'Cars routes' do
    it 'routes to cars#index' do
      expect(get: '/api/v1/cars').to route_to('api/v1/cars#index', format: 'json')
    end

    it 'routes to cars#new' do
      expect(get: '/api/v1/cars/new').to route_to('api/v1/cars#new', format: 'json')
    end

    it 'routes to cars#create' do
      expect(post: '/api/v1/cars').to route_to('api/v1/cars#create', format: 'json')
    end

    it 'routes to cars#show' do
      expect(get: '/api/v1/cars/1').to route_to('api/v1/cars#show', id: '1', format: 'json')
    end
  end
end
