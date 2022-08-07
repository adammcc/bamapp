class AddDefaultToAttachments < ActiveRecord::Migration[7.0]
  def change
    add_column :attachments, :default, :boolean
  end
end
