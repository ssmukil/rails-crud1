require "rails_helper"

RSpec.describe School,:type => :model do
	it " welcome" do
		school1 = School.create!(schoolname: "ssv",address: "1,Nethaji st",city: "chennai",state: "Tamilnadu",pincode: "123456" ,board: "cbse")
        # school2 = School.create!(name: "phari1")
        p school1
        # p school2
		
		# u = School.show(school1.id)
		# p u
		u = School.update(id: "4",schoolname: "sspv",address: "1,Nethaji st",city: "chennai",state: "Tamilnadu",pincode: "123456" ,board: "cbse")
		p u
		# expect(School.all).to eq([school1,school2])
	end
end
