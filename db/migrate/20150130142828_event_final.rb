class EventFinal < ActiveRecord::Migration
  def change
    add_column :events, :trigger_device, :string
    add_column :events, :trigger_device_status, :string
    add_column :events, :affected_device, :string
    add_column :events, :affected_device_status, :string
  end
end
