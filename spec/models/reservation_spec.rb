require 'rails_helper'

RSpec.describe Reservation, type: :model do
  before :each do
    @user = User.create(
      name: "John Doe",
      email: "johndoe@example.com",
      password: "password"
    )
    @car = Car.create(
      name: 'Audi',
      model: '2021',
      reserved: false,
      price: 100,
      image_url: 'https://www.audi.com/content/dam/gbp2/experience-audi/audi-models/a4-saloon/2021/1920x1080/1920x1080_A4_Saloon_2021_01.jpg',
      description: 'The Audi A4 is a line of compact executive cars produced since 1994
        by the German car manufacturer Audi, a subsidiary of the Volkswagen Group.',
      user_id: @user.id
    )
    @reservation = Reservation.new(user_id: @user.id, car_id: @car.id, city: "Georgia", pickup_date: Date.today, return_date: Date.today + 4.day)
  end

  context 'Testing Validations' do
    it 'is valid with valid attributes' do
      @reservation.save
      expect(@reservation).to be_valid
    end

    it 'is invalid without user_id' do
      @reservation.user_id = nil
      @reservation.save
      expect(@reservation).to_not be_valid
    end

    it 'is invalid without car_id' do
      @reservation.car_id = nil
      @reservation.save
      expect(@reservation).to_not be_valid
    end

    it 'is invalid without a pickup date' do
      @reservation.pickup_date = nil
      @reservation.save
      expect(@reservation).to_not be_valid
    end

    it 'is invalid without a return date' do
      @reservation.return_date = nil
      @reservation.save
      expect(@reservation).to_not be_valid
    end

    it 'should not book car again' do
      @reservation.save
      @reservation_again = Reservation.new(user_id: @user.id, car_id: @car.id, city: "Georgia", pickup_date: Date.today, return_date: Date.today + 4.day)
      expect(@reservation_again).to be_valid
    end

  end

  context 'Testing Associations' do
    it 'belongs_to a user' do
      assoc = Reservation.reflect_on_association(:user)
      expect(assoc.macro).to eq :belongs_to
    end

    it 'belongs_to a car' do
      assoc = Reservation.reflect_on_association(:car)
      expect(assoc.macro).to eq :belongs_to
    end
  end
end