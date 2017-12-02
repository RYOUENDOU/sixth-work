require 'rails_helper'

RSpec.describe Account, type: :model do
context '正常にデータが揃っている場合' do
    let(:account) { build(:account) }
    it 'バリデーションに通過する' do
      expect(account).to be_valid
    end
  end
   context '正常にデータが揃っていない場合' do
    context 'nameがnilの場合' do
      let(:account) { build(:account, name: nil) }
      it 'バリデーションに失敗する' do
        expect(account).to be_invalid
      end
      end
      context 'addressがnilの場合' do
      let(:account) { build(:account, address: nil) }
      it 'バリデーションに失敗する' do
        expect(account).to be_invalid
      end
  	  end
      context 'telが文字列の場合' do
      let(:account) { build(:account, tel: 'hello') }
      it 'バリデーションに失敗する' do
        expect(account).to be_invalid
      end
      end
	end
end
