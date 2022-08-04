class AddFolderToNote < ActiveRecord::Migration[7.0]
  def change
    add_reference :notes, :folder, type: :uuid, null: false
  end
end
