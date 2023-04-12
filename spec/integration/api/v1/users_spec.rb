require 'swagger_helper'

RSpec.describe 'api/v1/users', type: :request do
  path '/register' do
    post 'New user registration' do
      tags 'Register User'
      response(200, 'successful') do
        consumes 'application/json'
        parameter name: :user, in: :body, schema: {
          type: :object,
          properties: {

            name: { type: :string },
            email: { type: :string },
            password: { type: :string }

          },
          required: %w[name email password]
        }
        response '200', 'register' do
          let(:user) do
            { user: { name: 'John', email: 'some1@somemail.com', password: '12345678', password_confirmation: '12345678' } }
          end
          run_test!
        end
        response '422', 'invalid request' do
          let(:user) { { name: 'john', email: 'some@somemail.com', password: '123' } }
          run_test!
        end
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
  path '/login' do
    post 'Log in' do
      tags 'User session'
      response(200, 'successful') do
        consumes 'application/json'
        parameter name: :user, in: :body, schema: {
          type: :object,
          properties: {

            email: { type: :string },
            password: { type: :string }

          },
          required: %w[email password]
        }
        response '200', 'sign in' do
          let(:user) do
            { user: { email: 'some1@somemail.com', password: '12345678' } }
          end
          run_test!
        end
        response '422', 'invalid request' do
          let(:user) { { name: 'john', email: 'some@some.com', password: '123' } }
          run_test!
        end
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
  path '/sign_out' do
    delete 'Log out' do
      tags 'Delete session'
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
