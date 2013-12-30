class Entry < ActiveRecord::Base
  validates_presence_of :title, :body

  belongs_to :category

  def prettytime
    self.created_at.strftime("%B %e @ %l:%M %p")
  end

  def catted
    if self.category == nil
      'Uncategorized'
     else
      self.category.name
    end
  end

end
