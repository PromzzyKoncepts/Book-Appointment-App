require 'rails_helper'

RSpec.describe 'API V1 Routes', type: :routing do
  describe 'Reservations routes' do
    it 'routes to reservations#index' do
      expect(get: '/api/v1/reservations').to route_to('api/v1/reservations#index', format: 'json')
    end

    it 'routes to reservations#new' do
      expect(get: '/api/v1/reservations/new').to route_to('api/v1/reservations#new', format: 'json')
    end

    it 'routes to reservations#create' do
      expect(post: '/api/v1/reservations').to route_to('api/v1/reservations#create', format: 'json')
    end

    it 'routes to reservations#show' do
      expect(get: '/api/v1/reservations/1').to route_to('api/v1/reservations#show', id: '1', format: 'json')
    end
  end
end
