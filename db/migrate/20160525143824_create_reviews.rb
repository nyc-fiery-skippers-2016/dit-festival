class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
    	t.text :body, null: false

    	t.references :film, null: false
			t.references :user, null: false
			
      t.timestamps null: false
    end
  end
end
