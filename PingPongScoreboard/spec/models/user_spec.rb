require 'rails_helper'
require "spec_helper"

RSpec.describe User, :type => :model do

  
  describe "model" do
    it "has a name and an email" do
      expect { User.create(:name => "John Doe", :email => "sample@aol.com") }.to_not raise_error
      jack = User.create(:name => "Jack Doe", :email => "sample2@aol.com")
      expect(jack.name).to eq('Jack Doe')
      expect(jack.email).to eq('sample2@aol.com')
    end
    it "can access the high score" do
      users = User.create([{email: "playerone@aol.com", name: "Ron Weasly"}, {email: "playertwo@aol.com", name: "Hermione Granger"}])
      api_info = AccessApi.find_by_email(users.first.email)
      expect(users.first.high_score).to eq(api_info.high_score)
    end
  end
end