class CreateAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :attachments do |t|
      t.string :name
      t.text :description
      t.integer :order

      t.timestamps
    end
  end
end
