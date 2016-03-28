class AddImageLinkToBlog < ActiveRecord::Migration
  def change
    add_column :blogs, :image_link, :string
  end
end
