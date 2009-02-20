class User < ActiveRecord::Base
  belongs_to :account
  has_many :roles
  
  # before_save :ensure_user_role

  protected
  
  def ensure_user_role
    if self.roles.find(:first, :conditions => {:type => "UserRole"}).nil?
      self.roles << UserRole.new
    end
  end

end
