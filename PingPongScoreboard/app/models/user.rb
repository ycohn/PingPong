class User < ActiveRecord::Base

  def high_score
    @user = AccessApi.find_by_email(self.email)
    @user.high_score
  end

end
