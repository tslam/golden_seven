class CreatePictures < ActiveRecord::Migration
  def up
    create_table :pictures do |t|
      t.string :source
      t.string :caption
    end
  end

  def down
  end
end
