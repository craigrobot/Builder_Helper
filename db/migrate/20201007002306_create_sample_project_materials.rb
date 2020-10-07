class CreateSampleProjectMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :sample_project_materials do |t|
      t.references :sample_project, null: false, foreign_key: true
      t.references :material, null: false, foreign_key: true
      t.integer :count

      t.timestamps
    end
  end
end
