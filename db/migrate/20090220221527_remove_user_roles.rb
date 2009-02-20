class User < ActiveRecord::Base
  has_many :roles
end

class Role < ActiveRecord::Base
  belongs_to :user
end

class RemoveUserRoles < ActiveRecord::Migration
  def self.up
    Role.delete_all(:type => "UserRole")
    remove_column :roles, :user_id
  end

  def self.down
    add_column :roles, :user_id, :integer
    User.all.each do |u|
      u.roles << Role.new(:type => "UserRole")
    end
  end
end
