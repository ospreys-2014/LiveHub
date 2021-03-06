class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references  :user
      t.boolean     :rating
      t.references  :ratingable, polymorphic: true

      t.timestamps
    end
  end
end
