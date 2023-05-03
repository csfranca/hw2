class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
       # t.integer "id" > is created automatically
      t.string "title"
      t.integer "year_released"
      t.string "rated"
      t.integer "studio_id" #foreign key

      t.timestamps
    end
  end
end
