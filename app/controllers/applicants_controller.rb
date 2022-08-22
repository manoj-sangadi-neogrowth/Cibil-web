class ApplicantsController < ApplicationController
  #before_action :check_user, only: [:update]
  def index
    @applicants = Applicant.all 
  end

  def show
    @applicant = Applicant.find(params[:id])
  end


  def new
    @applicant = Applicant.new  
  end 

  def create 
    @applicant = Applicant.create(applicant_params)
    #@applicant.Address.create(address1, address2, address3)

    if @applicant.save
      redirect_to @applicant
    else 
      render 'new'
    end 
  end 

  
  def edit 
    @applicant = Applicant.find(params[:id])
  end 

  def update 
    @applicant = Applicant.find(params[:id])

    if @applicant.update(applicant_params)
      redirect_to @applicant
    else
      render 'new'
    end
  end

  def destroy
    @applicant = Applicant.find(params[:id])
    @applicant.destroy

    redirect_to home_path, status: :see_other
  end

  # def destroy_all
  #   @applicant = Applicant.where(:id => params[:id])
  #   @applicant.destroy_all
    
  #   redirect_to home_path, status: :see_other
  # end

  private
  def applicant_params
    params.require(:applicant).permit(:First_name, :middle_name, :last_name, :gender, :date_of_birth, :pan_number, :mobile, :country, :state, :pin_code, :email)
  end

  # def check_user
  #   @applicant = Applicant.find(name: params[:id])
  # end

end
