class SampleProject < ApplicationRecord
  has_many :sample_project_materials
  has_many :materials, through: :sample_project_materials
  has_many :sample_project_tools
  has_many :tools, through: :sample_project_tools
end
