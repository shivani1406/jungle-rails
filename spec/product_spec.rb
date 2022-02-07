require 'rails_helper.rb'
RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    it 'should save a valid product' do
      @category = Category.create(name:"Tables")
      product = Product.new(
        name: "Table",
        price: 100.00,
        quantity: 15,
        category_id: @category.id
        )
      expect(product).to (be_valid)
    end

    it 'should not save invalid product' do
      @category = Category.create(name:"Tables")
      product = Product.new(
        name: nil,
        price: 100.00,
        quantity: 15,
        category_id: @category.id
        )
      expect(product).to (be_invalid)
    end

    it 'should not save invalid product' do
      @category = Category.create(name:"Tables")
      product = Product.new(
        name: "Table",
        price: nil,
        quantity: 15,
        category_id: @category.id
        )
      expect(product).to (be_invalid)
    end
    it 'should not save invalid product' do
      @category = Category.create(name:"Tables")
      product = Product.new(
        name: "Table",
        price: 100.00,
        quantity: nil,
        category_id: @category.id
        )
      expect(product).to (be_invalid)
    end
    it 'should not save invalid product' do
      @category = Category.create(name:"Tables")
      product = Product.new(
        name: "Table",
        price: 100.00,
        quantity: 10,
        category_id: nil
        )
      expect(product).to (be_invalid)
    end
  end
end