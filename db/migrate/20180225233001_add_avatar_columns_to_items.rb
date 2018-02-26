class AddAvatarColumnsToItems < ActiveRecord::Migration[5.1]
 def up
    add_attachment :items, :avatar
  end

  def down
    remove_attachment :items, :avatar
  end
end
