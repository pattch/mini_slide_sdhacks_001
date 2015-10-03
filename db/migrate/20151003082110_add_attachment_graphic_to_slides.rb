class AddAttachmentGraphicToSlides < ActiveRecord::Migration
  def self.up
    change_table :slides do |t|
      t.attachment :graphic
    end
  end

  def self.down
    remove_attachment :slides, :graphic
  end
end
