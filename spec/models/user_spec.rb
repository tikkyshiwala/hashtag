require 'spec_helper'

describe User do
  let(:user) { create(:user) }
  let(:admin) { create(:admin) }
  
  describe '#admin?' do
    it { expect(admin).to be_admin }
  end
  
  describe 'validations' do
    before(:each) { create(:user) }
    
    it { should validate_presence_of :email }
    it { should validate_presence_of :role }
    it { should validate_uniqueness_of :email }
  end
  
  describe '#authenticate' do   
    context "with correct password" do
      it { expect(admin.authenticate('password')).to be_true }
    end
    
    context "with incorrect password" do
      it { expect(admin.authenticate('wrong_password')).not_to be_true }
    end
  end 
end