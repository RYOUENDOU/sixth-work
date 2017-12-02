require 'rails_helper'

RSpec.describe CartItem, type: :model do
  context '正常にデータが揃っている場合' do
    let(:cart_item) { build(:cart_item) }
    it 'バリデーションに通過する' do
      expect(cart_item).to be_valid
    end
  end

end
