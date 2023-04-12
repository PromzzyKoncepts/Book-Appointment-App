require 'swagger_helper'

RSpec.describe 'api/v1/reservations', type: :request do
  path '/api/v1/reservations' do
    get('list reservations') do
      tags 'Reservations'
      response(200, 'successful') do
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    post('create reservation') do
      tags 'Reservations'
      response(200, 'successful') do
        consumes 'application/json'
        parameter name: :car, in: :body, schema: {
          type: :object,
          properties: {
            pickup_date: { type: :string, format: :date, required: true },
            return_date: { type: :string, format: :date, required: true },
            city: { type: :string },
            user_id: { type: :integer },
            car_id: { type: :integer }
          },
          required: %w[pickup_date return_date city user_id car_id]
        }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/api/v1/reservations/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show reservation') do
      tags 'Reservation'
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    delete('delete reservation') do
      tags 'Reservations'
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
