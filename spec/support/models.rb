class Athlete < ActiveRecord::Base
  include Merge
  def merge_attributes
    ['first_name', 'last_name','birthdate']
  end
end

