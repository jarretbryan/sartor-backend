class CreateLooks < ActiveRecord::Migration[5.2]
  def change
    create_table :looks do |t|
      t.string :title
      t.string :lookURL
      t.references :user, foreign_key: true
      # , on_delete: :cascade

      t.timestamps
    end
  end
end
