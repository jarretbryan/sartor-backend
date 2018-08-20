class AddForeignKeyToLooks < ActiveRecord::Migration[5.2]
  def change
  remove_foreign_key :links, :looks

    # add the new foreign_key
    add_foreign_key :links, :looks, on_delete: :cascade
  end
end
