require 'rails_helper'

RSpec.describe Profile do
  let(:user) { FactoryGirl.create(:user) }
  let(:profile) { FactoryGirl.build(:profile, user: user) }

  describe 'validations' do
    it { validate_presence_of(:first_name) }
    it { expect(profile).to be_valid }
  end

  describe 'associations' do
    it { belong_to(:user) }
  end
end
