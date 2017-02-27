class AddDateToNewsletter < ActiveRecord::Migration[5.0]
  def change
    add_column :newsletters, :date, :timestamp
  end
end
