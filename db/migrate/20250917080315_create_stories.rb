class CreateStories < ActiveRecord::Migration[8.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :stage
      t.date :date

      t.timestamps
    end
  end
end
