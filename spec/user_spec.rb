require 'rails_helper.rb'
RSpec.describe User, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    it 'should save a valid user' do
      user = User.new(
        name: "test",
        email: "test@test.com",
        password_digest: "test1"
        )
      expect(user).to (be_valid)
    end

    it 'should not save a invalid user password length less than 5' do
      user = User.new(
        name: "test",
        email: "test@test.com",
        password_digest: "test"
        )
      expect(user).to (be_invalid)
    end

  end
end