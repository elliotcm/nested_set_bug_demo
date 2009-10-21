require File.dirname(__FILE__) + '/../spec_helper'

describe Thing do
  it "should fill in a field after create" do
    created_thing = Thing.create! :name => 'A thing'
    created_thing.after_save_field.should == 'Filter chain successful'
  end
  
  it "should fill in a field after save" do
    saved_thing = Thing.new :name => 'A thing'
    saved_thing.save!
    saved_thing.after_save_field.should == 'Filter chain successful'
  end
end
