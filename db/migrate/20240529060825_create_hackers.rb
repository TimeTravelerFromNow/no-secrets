class CreateHackers < ActiveRecord::Migration[8.0]
  def change
    create_table :hackers do |t|
      t.string :stealing_blob

      t.timestamps
    end
  end
end
