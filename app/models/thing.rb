class Thing < ActiveRecord::Base
  after_save :fill_in_field
  
  def fill_in_field
    self.after_save_field = 'Filter chain successful'
  end
end
