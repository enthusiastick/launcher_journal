class Entry < ActiveRecord::Base
  validates_presence_of :title, :body

  def prettytime
    self.created_at.strftime("%B %e @ %l:%M %p")
  end

end
