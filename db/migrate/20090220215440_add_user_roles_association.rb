class User < ActiveRecord::Base
  has_many :roles
end

class Role < ActiveRecord::Base
  belongs_to :user
end

class AddUserRolesAssociation < ActiveRecord::Migration
  def self.up
    add_column :roles, :user_id, :integer
    User.all.each do |u|
      u.roles << Role.new(:type => "UserRole")
    end
  end

  def self.down
    remove_column :roles, :user_id
    Role.delete_all(:type => "UserRole")
  end
end
