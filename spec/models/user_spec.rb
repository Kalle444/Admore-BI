# frozen_string_literal: true
require 'rails_helper'

RSpec.describe User, type: :model do
  context "test the model validations" do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
  end

  context "#abbreviated_name method" do
      let(:user) {create(:user, first_name: "Lena", last_name: "Lovgren")}

      it "should return First letter in first name & whole last name" do
        expect(user.abbreviated_name).to eq("L Lovgren")
      end
  end

end
