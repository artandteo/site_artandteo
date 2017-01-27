class AddReferencesToBlog < ActiveRecord::Migration[5.0]
  def change
    add_reference :blogs, :categorie, foreign_key: true
  end
end
