class CreateActors < ActiveRecord::Migration[7.0]
  def change
    create_table :actors do |t|
      # t.integer "id" > is created automatically
      t.string "name"
      
      t.timestamps
    end
  end
end
