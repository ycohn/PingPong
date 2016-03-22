class AccessApi
  include HTTParty
  base_uri "http://localhost:3001/api/v1"

  attr_accessor :email, :high_score

  def initialize(email, high_score)
    @email = email
    @high_score = high_score
  end

  def self.find_by_email(email)
    response = get('/scores')
    if response.success?
      i = 0
      while i < response["scores"].length
        # binding.pry
        if response["scores"][i]["email"] == email
          # binding.pry
          user = self.new(response["scores"][i]["email"], response["scores"][i]["high_score"])
        end
       i += 1
      end
    end
    user
  end
end