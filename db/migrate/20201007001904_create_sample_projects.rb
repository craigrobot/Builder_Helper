class CreateSampleProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :sample_projects do |t|
      t.string :title
      t.integer :level
      t.string :image
      t.string :instructions

      t.timestamps
    end
  end
end
