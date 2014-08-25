class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :clicks

  def update_tracked_fields!(request)
    old_signin = self.last_sign_in_at
    super
    if self.last_sign_in_at != old_signin
      Tracking.create :user => self, :user_name => "#{self.first_name} #{self.last_name}", :action => "login", :ip => self.last_sign_in_ip
    end
  end
end
