class CreateScore < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :email
      t.integer :high_score
    end
  end
end
