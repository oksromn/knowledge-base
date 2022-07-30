class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes, id: :uuid do |t|
      t.string :title
      t.text :content
      t.references :user, type: :uuid, null: :false

      t.timestamps
    end
  end
end
