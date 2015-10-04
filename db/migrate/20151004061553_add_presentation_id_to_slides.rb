class AddPresentationIdToSlides < ActiveRecord::Migration
  def change
    add_column :slides, :presentation_id, :integer
    add_index :slides, :presentation_id
  end
end
