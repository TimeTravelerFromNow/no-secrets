class AddNameToHacker < ActiveRecord::Migration[8.0]
  def change
    add_column :hackers, :name, :string
  end
end
