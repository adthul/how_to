class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :step_number
      t.string :step_name
      t.text :content

      t.timestamps
    end
  end
end
