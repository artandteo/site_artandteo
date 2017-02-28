class CreateLastNewsletter < ActiveRecord::Migration[5.0]
  def change
    create_table :last_newsletters do |t|
      t.timestamp :date
    end
  end
end
