class CreateSampleProjectTools < ActiveRecord::Migration[6.0]
  def change
    create_table :sample_project_tools do |t|
      t.references :sample_project, null: false, foreign_key: true
      t.references :tool, null: false, foreign_key: true

      t.timestamps
    end
  end
end
