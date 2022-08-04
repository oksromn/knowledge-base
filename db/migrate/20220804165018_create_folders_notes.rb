class CreateFoldersNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :folders_notes, id: :uuid do |t|
      t.references :folder, type: :uuid, null: false
      t.references :note, type: :uuid, null: false

      t.timestamps
    end
  end
end
