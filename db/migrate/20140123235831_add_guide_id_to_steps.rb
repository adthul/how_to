class AddGuideIdToSteps < ActiveRecord::Migration
  def change
    add_column :steps, :guide_id, :integer
  end
end
