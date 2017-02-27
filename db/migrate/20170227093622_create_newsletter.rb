class CreateNewsletter < ActiveRecord::Migration[5.0]
  def change
    create_table :newsletters do |t|
      t.string :nom
      t.string :email
    end
  end
end
