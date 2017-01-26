class AddUserReferencesToBlogs < ActiveRecord::Migration[5.0]
  def change
    add_reference :blogs, :users, foreign_key: true
  end
end
