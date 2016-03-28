class AddBriefToBlog < ActiveRecord::Migration
  def change
    add_column :blogs, :brief, :text
  end
end
