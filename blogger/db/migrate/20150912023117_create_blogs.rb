class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :text
      t.string :byline

      t.timestamps null: false
    end
  end
end
