class SchoolsController < ApplicationController

	before_action :set_school, only: [:show, :edit, :update, :destroy]

	def index
		@schools = School.all
   end
   
   def show

   	@school = School.find(params[:id])
   end
   
   def new   
   	@school = School.new  
   end
   
   def create
    alert()
   	@school = School.new(school_params)

    
    if @school.save
       #  elsif @school.valid? => false
       # @school.errors.messages => {:schoolname =>["can't be blank"]}
       #   # alert("pls fill the valid data")
        flash[:notice] = "Post1 has been saved successfully."
         redirect_to @school
      
      else
        flash[:notice] = "Post has been saved successfully."
        render :new
      end
    
   end
   
   def edit
   end
   
   def update
   	@school = School.find(params[:id])
   	if @school.update(school_params)
   		redirect_to @school
   		else
        render :new
      end
   end
   
   def destroy
   	@school = School.find(params[:id])
   	 @school.destroy
   		redirect_to schools_url
   		
     
   end

   private
    # Use callbacks to share common setup or constraints between actions.
    def set_school
      @school = School.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_params
      params.require(:school).permit(:schoolname, :address, :city, :state, :pincode, :board)
    end

end
