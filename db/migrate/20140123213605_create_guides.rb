class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|
      t.string :guide_for
      t.string :guide_name
      t.text :info

      t.timestamps
    end
  end
end
