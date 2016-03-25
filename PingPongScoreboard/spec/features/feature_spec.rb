require 'spec_helper'
require "rails_helper"

describe "GET '/'" do
  it 'visits the home page' do
    visit '/'
    expect(page.body).to include("PingPongScoreboard")
  end
  it 'does not show table on load' do
    visit '/'
    expect(page).not_to have_selector("info")
  end
  it "shows table with the players names, emails, and scores when clicked" do
    visit '/'
    click_link('Show High Scores')
    expect(page.body).to have_css("table")
    name = page.find('#name-0')
    email = page.find('#email-0')
    high_score = page.find('#high_score-0')
    expect(name).to have_content("#{User.first.name}")
    expect(email).to have_content("#{User.first.email}")
    expect(high_score).to have_content("#{AccessApi.find_by_email(User.first.email).high_score}")
  end
end
