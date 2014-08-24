class CreateClicks < ActiveRecord::Migration
  def change
    create_table :clicks do |t|
      t.references :user, index: true
      t.references :file_link, index: true
      t.string :user_name
      t.string :file_title

      t.timestamps
    end
  end
end
