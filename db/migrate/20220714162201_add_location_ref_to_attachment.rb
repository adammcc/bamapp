class AddLocationRefToAttachment < ActiveRecord::Migration[5.2]
  def change
    add_reference :attachments, :location, foreign_key: true
  end
end
