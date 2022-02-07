require 'rails_helper.rb'
RSpec.describe User, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    it 'should save a valid user' do
      user = User.new(
        name: "test",
        email: "test@test.com",
        password: "test1",
        password_confirmation: "test1"
        )
      expect(user).to (be_valid)
    end

    it 'should check if password and password confirmation same' do
      user = User.new(
        name: "test",
        email: "test@test.com",
        password: "test1",
        password_confirmation: "test1"
        )
      expect(user.password).to eq(user.password_confirmation)
    end

    it 'should check if password and password confirmation not same' do
      user = User.new(
        name: "test",
        email: "test@test.com",
        password: "test1",
        password_confirmation: nil
        )
      expect(user.password).not_to eq(user.password_confirmation)
    end

    it 'should not save a invalid user password length less than 5' do
      user = User.new(
        name: "test",
        email: "test@test.com",
        password: "test"
        )
      expect(user).to (be_invalid)
    end

    # it 'should not save a user if already in database' do
    #   user = User.new(
    #     name: "test",
    #     email: "shivani1406sharma@gmail.com",
    #     password: "test1",
    #     password_confirmation: "test1"
    #     )
    #   expect(user).to (be_valid)
    # end

  end
end