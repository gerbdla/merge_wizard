require 'spec_helper'

describe Athlete do
it "should save when name is not empty" do
    Athlete.new(:first_name => 'Alex',:last_name => 'Gerber').save.should == true
end

it "should merge" do
   athlete1 = Athlete.where(:first_name =>"Kobe",:birthdate => nil).first
   athlete2 = Athlete.where(:first_name => "Kobe",:birthdate => "10/12/1969").first
   athlete3 = Athlete.where(:first_name => "John").first
   athlete1.first_name.should == "Kobe" 
   athlete1.last_name.should == "Bryant" 
   athlete2.first_name.should == "Kobe" 
   athlete2.last_name.should =="Bryant"
   athlete3.first_name.should == "John"
   athlete1.merge!(athlete2)  
   athlete2.destroyed? == true
   athlete1.birthdate.should == "10/12/1969"
   
end 


  
end