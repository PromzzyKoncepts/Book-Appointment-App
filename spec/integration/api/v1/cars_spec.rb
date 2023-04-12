require 'swagger_helper'

RSpec.describe 'api/v1/cars', type: :request do
  path '/api/v1/cars' do
    get('list cars') do
      tags 'Cars'
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

    post('create car') do
      tags 'Cars'
      response(200, 'successful') do
        consumes 'application/json'
        parameter name: :car, in: :body, schema: {
          type: :object,
          properties: {
            name: { type: :string },
            model: { type: :string },
            reserved: { type: :boolean },
            price: { type: :integer },
            image_url: { type: :string },
            user_id: { type: :integer }
          },
          required: %w[name model price image_url user_id]
        }
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
          response '401', 'car created successfully' do
            let(:car) do
              { model: 'Tesla', price: 20_000, image_url: 'photo.jpeg',
                user_id: 1 }
            end
            run_test!
          end
          response '401', 'invalid request' do
            let(:car) do
              { model: '', price: 2000, image_url: 'photo.jpeg',
                user_id: 1 }
            end
            run_test!
          end
        end
        run_test!
      end
    end
  end

  path '/api/v1/cars/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show car') do
      tags 'Cars'
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

    delete('Delete car') do
      tags 'Cars'
      response(200, 'car deleted successfully') do
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
