class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :link
      t.string :location
      t.string :blog_type

      t.timestamps null: false
    end
  end
end
