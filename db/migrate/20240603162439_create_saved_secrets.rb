class CreateSavedSecrets < ActiveRecord::Migration[7.1]
  def change
    create_table :saved_secrets do |t|
      t.string :title
      t.string :saved_skb

      t.timestamps
    end
  end
end
