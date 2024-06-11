class AddHackerToPosts < ActiveRecord::Migration[8.0]
  def change
    add_reference :posts, :hacker, null: true, foreign_key: true
  end
end
