class CreateBlobStealers < ActiveRecord::Migration[8.0]
  def change
    create_table :blob_stealers do |t|
      t.string :title
      t.integer :stolen_id
      t.string :stolen_purpose
      t.string :stolen_signed_id

      t.timestamps
    end
  end
end
