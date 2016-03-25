require 'rails_helper'

RSpec.describe Api::V1::ScoresController, :type => :controller do
  render_views

  let(:json) { JSON.parse(response.body) }

  describe "GET /scores.json" do
    before do
      get :index, format: :json
    end

    it 'responds with 200' do
      expect(response).to be_success
    end

    context 'all scores' do 
      it 'returns all the score records' do
        expect(json["scores"][0]["email"]).to include(Score.first.email)
        expect(json["scores"][1]["high_score"]).to eq(Score.second.high_score)
      end
    end 
  end
end