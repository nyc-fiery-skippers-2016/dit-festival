class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :score

      t.references :user, null: false
      t.references :film, null: false
      t.timestamps null: false
    end
  end
end
