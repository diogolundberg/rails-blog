class AddIndexToLeadsEmail < ActiveRecord::Migration
  def change
    add_index :leads, :email, unique: true
  end
end
