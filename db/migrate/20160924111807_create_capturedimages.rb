class CreateCapturedimages < ActiveRecord::Migration
  def change
    create_table :capturedimages do |t|
      t.integer :role
      t.integer :prototype_id
      t.text :photo
      t.timestamps
    end
  end
end
