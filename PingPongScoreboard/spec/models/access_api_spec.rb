require 'rails_helper'
require "spec_helper"

RSpec.describe AccessApi, :type => :model do

  describe ".find_by_email" do
    it "can retreive record from API using email" do
      user = User.first
      expect(user.email).to eq(AccessApi.find_by_email(user.email).email)
    end
  end

end