class CreateJoinTableGroupsLogs < ActiveRecord::Migration[7.0]
  def change
    create_join_table :groups, :logs do |t|
      # t.index [:group_id, :log_id]
      # t.index [:log_id, :group_id]
    end
  end
end
