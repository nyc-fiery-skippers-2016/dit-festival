class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :title, null: false
      t.references :user, null: false
      t.references :category, null: false

      t.timestamps null: false
    end
  end
end
