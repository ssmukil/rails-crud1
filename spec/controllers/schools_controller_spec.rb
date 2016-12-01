require "rails_helper"


RSpec.describe SchoolsController,:type => :controller do
	describe "Get Index" do
	it "responds successfuly create" do
		school1 = School.create!(schoolname: "ssv",address: "1,Nethaji st",city: "chennai",state: "Tamilnadu",pincode: "123456" ,board: "cbse")
		school2 = School.create!(schoolname: "ssv1",address: "1,Nethaji st",city: "chennai",state: "Tamilnadu",pincode: "123456" ,board: "cbse")
		get :index
		expect(response).to render_template("index")
	end
	it "responds successfuly show" do
		school1 = School.create!(schoolname: "ssv",address: "1,Nethaji st",city: "chennai",state: "Tamilnadu",pincode: "123456" ,board: "cbse")
		school2 = School.create!(schoolname: "ssv1",address: "1,Nethaji st",city: "chennai",state: "Tamilnadu",pincode: "123456" ,board: "cbse")
		get :show, id: school2.id
		expect(response).to render_template("show")
	end

	it "responds successfuly edit" do
		school1 = School.create!(schoolname: "ssv",address: "1,Nethaji st",city: "chennai",state: "Tamilnadu",pincode: "123456" ,board: "cbse")
		school2 = School.create!(schoolname: "ssv1",address: "1,Nethaji st",city: "chennai",state: "Tamilnadu",pincode: "123456" ,board: "cbse")
		get :edit, id: school2.id
		expect(response).to render_template("edit")
	end
end
end