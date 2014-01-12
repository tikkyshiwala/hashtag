require 'spec_helper'

describe User, 'validations' do
  before(:each) do
    create(:user)
  end

  it { should validate_presence_of :email }
  it { should validate_presence_of :role }
  it { should validate_uniqueness_of :email }
end

describe User, '#authentication' do
  it 'authenticates user' do
    user = create(:user)
    expect(user.authenticate('password')).to be_true
  end

  it "doesn't authenticates user" do
    user = create(:user)
    expect(user.authenticate('wrong_password')).not_to be_true
  end
end

describe User do
  it 'checks is user is admin' do
    user = create(:admin) 
    expect(user).to be_admin
  end
end
