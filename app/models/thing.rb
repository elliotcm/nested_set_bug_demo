class Thing < ActiveRecord::Base
  acts_as_nested_set
  after_save :fill_in_field
  
  has_many :other_things
  
  def fill_in_field
    self.after_save_field = 'Filter chain successful'
  end
end
