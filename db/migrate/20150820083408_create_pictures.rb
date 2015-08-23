class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.references :album, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
