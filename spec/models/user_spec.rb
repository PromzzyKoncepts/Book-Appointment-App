require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it "is valid with valid attributes" do
      user = User.new(
        name: "John Doe",
        email: "johndoe@example.com",
        password: "password"
      )
      expect(user).to be_valid
    end

    it "is not valid without a name" do
      user = User.new(
        email: "johndoe@example.com",
        password: "password"
      )
      expect(user).to_not be_valid
    end

    it "is not valid without an email" do
      user = User.new(
        name: "John Doe",
        password: "password"
      )
      expect(user).to_not be_valid
    end

    it "is not valid without a password" do
      user = User.new(
        name: "John Doe",
        email: "johndoe@example.com"
      )
      expect(user).to_not be_valid
    end

    it "is not valid with a name less than 5 characters" do
      user = User.new(
        name: "John",
        email: "johndoe@example.com",
        password: "password"
      )
      expect(user).to_not be_valid
    end

    it "is not valid with a name more than 100 characters" do
      user = User.new(
        name: "a" * 101,
        email: "johndoe@example.com",
        password: "password"
      )
      expect(user).to_not be_valid
    end

    it "is not valid with a duplicate email" do
      User.create(
        name: "John Doe",
        email: "johndoe@example.com",
        password: "password"
      )
      user = User.new(
        name: "Jane Doe",
        email: "johndoe@example.com",
        password: "password"
      )
      expect(user).to_not be_valid
    end

    it "is not valid with a password less than 6 characters" do
      user = User.new(
        name: "John Doe",
        email: "johndoe@example.com",
        password: "12345"
      )
      expect(user).to_not be_valid
    end
  end

  describe "associations" do
    it "has many cars" do
      user = User.reflect_on_association(:cars)
      expect(user.macro).to eq(:has_many)
    end

    it "destroys associated cars" do
      user = User.create(
        name: "John Doe",
        email: "johndoe@example.com",
        password: "password"
      )
      car = user.cars.create(
        name: "Toyota",
        model: "Corolla",
        reserved: false,
        price: 20000,
        image_url: "image_url",
        description: "this is a little description"
      )
      expect { user.destroy }.to change { Car.count }.by(-1)
    end

    it "has many reservations" do
      user = User.reflect_on_association(:reservations)
      expect(user.macro).to eq(:has_many)
    end

    # it "destroys associated reservations" do
    #   user = User.create(
    #     name: "John Doe",
    #     email: "johndoe@example.com",
    #     password: "password"
    #   )
    #   reservation = user.reservations.create(
    #     start_date: Date.today,
    #     end_date: Date.tomorrow,
    #     car_id:
  end
end
