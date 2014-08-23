class CreateFileLinks < ActiveRecord::Migration
  def change
    create_table :file_links do |t|
      t.float :week
      t.date :release_date
      t.string :title
      t.string :url
      t.boolean :shown, default: true

      t.timestamps
    end
  end
end
