class CreateContentPieces < ActiveRecord::Migration
  def self.up
    create_table :content_pieces do |t|
      t.string :controller
      t.string :view
      t.string :area
      t.text :content
      t.timestamps
    end
  end
  
  def self.down
    drop_table :content_pieces
  end
end
