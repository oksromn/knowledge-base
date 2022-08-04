class CreateFolders < ActiveRecord::Migration[7.0]
  def change
    create_table :folders do |t|
      t.string :name, null: false, default: ""
      t.string :color, null: false, default: "indigo"

      t.timestamps
    end
  end
end
