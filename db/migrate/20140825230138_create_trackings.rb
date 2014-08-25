class CreateTrackings < ActiveRecord::Migration
  def change
    create_table :trackings do |t|
      t.references :user, index: true
      t.string :user_name
      t.string :ip
      t.string :action

      t.timestamps
    end
  end
end
