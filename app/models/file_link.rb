class FileLink < ActiveRecord::Base
  has_many :clicks

  def last_click_by(user)
    Click.where(user: user, file_link: self).last
  end
end
