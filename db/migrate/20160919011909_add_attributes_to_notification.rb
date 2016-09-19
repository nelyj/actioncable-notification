class AddAttributesToNotification < ActiveRecord::Migration[5.0]
  def change
    add_column :notifications, :action, :string
    add_column :notifications, :notifiable_type, :string
    add_column :notifications, :notifiable_id, :integer
    add_reference :notifications, :user, foreign_key: true
    add_column :notifications, :recipient_id, :integer
  end
end
