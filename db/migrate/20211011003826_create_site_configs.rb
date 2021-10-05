class CreateSiteConfigs < ActiveRecord::Migration[5.2]
  def change
    create_table :site_configs do |t|
      t.string :main_image_path

      t.timestamps
    end
  end
end
