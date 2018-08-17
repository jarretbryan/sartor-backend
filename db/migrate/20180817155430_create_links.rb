class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :article
      t.string :linkURL
      t.references :look, foreign_key: true, on_delete: :cascade

      t.timestamps
    end
  end
end
