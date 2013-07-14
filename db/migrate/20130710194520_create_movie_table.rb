class CreateMovieTable < ActiveRecord::Migration
  def up
    create_table :movies do |t|
      t.string :name
      t.integer :year
      t.string :plot
      t.string :mpaa
      t.integer :rating
      t.timestamps
    end
  end

  def down
    drop_table :movies
  end
end
