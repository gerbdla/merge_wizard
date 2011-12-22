ActiveRecord::Schema.define do
  self.verbose = false

  create_table :athletes, :force => true do |t|
    t.string :first_name
    t.string :last_name
    t.string :birthdate 
    t.string :nickname
    t.timestamps
    t.datetime :published_at
  end
  
  
end