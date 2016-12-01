class School < ApplicationRecord
	# validates: pincode , :numericality => true
	validates:schoolname , :presence => true 
	validates_format_of :schoolname, with: /\A[a-z][a-z_ \-]*\z/i, on: :create,message: 'pls enter char'
	validates_length_of :pincode,maximum: 6,minimum: 6, message: 'please enter at least 6 characters'

	# validates_numericality_of: pincode 
	has_many:sudents
end


 user = School.new
 user.valid? 
 # user.errors.on(:schoolname)
 # => ["can't be blank", "is too short (minimum is 3 characters)"]

# alert('test')
 # user.errors.messages => {:schoolname =>["can't be blank"]}

#  user.errors.clear
# user.errors.empty? # => true

# p.save # => false

# p.errors.on(:schoolname)