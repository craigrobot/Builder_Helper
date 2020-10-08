class SampleProject < ApplicationRecord
  has_many :sample_project_materials, dependent: :destroy
  has_many :materials, through: :sample_project_materials, dependent: :destroy
  has_many :sample_project_tools, dependent: :destroy
  has_many :tools, through: :sample_project_tools, dependent: :destroy
end
