require File.dirname(__FILE__) + '/../spec_helper'

describe Thing do
  before(:each) do
    @other_thing = OtherThing.create! :name => 'Other thing'
  end
  
  context 'without a parent move' do
    it "should fill in a field after save" do
      saved_thing = Thing.new :name => 'A thing'
      saved_thing.other_things << @other_thing
      saved_thing.save
      
      saved_thing.after_save_field.should == 'Filter chain successful'
      saved_thing.other_things.should == [@other_thing]
    end
  end
  
  context 'with a parent move' do
    before(:each) do
      @parent = Thing.create! :name => 'Parent thing'
    end
    
    it "should fill in a field after save" do
      saved_thing = Thing.new :name => 'A thing', :parent_id => @parent.id
      saved_thing.other_things << @other_thing
      saved_thing.save

      saved_thing.after_save_field.should == 'Filter chain successful'
      saved_thing.other_things.should == [@other_thing]

      @parent.reload
      @parent.descendants.should == [saved_thing]
    end
  end
end
