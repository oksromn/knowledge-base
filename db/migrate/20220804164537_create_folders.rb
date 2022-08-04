class CreateFolders < ActiveRecord::Migration[7.0]
  def change
    create_table :folders, id: :uuid do |t|
      t.string :name, null: false, default: ""
      t.string :color, null: false, default: "indigo"
      t.references :user, type: :uuid, null: false

      t.timestamps
    end
  end
end
