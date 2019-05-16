class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  def index
    @people = Person.all.order(:last_name)
  end

  def show
    #set_person 
  end

  def new
    @person = Person.new 
  end 

  def create 
    @person = Person.new(person_params)
    if @person.save
      redirect_to people_path 
    else
      render :new
    end 
  end 

  def edit
    #set_person 
  end 

  def update
    #set_person 
    if @person.update(person_params)
      redirect_to person_path(@person)
      # redirect_to @person
    else 
      render :edit 
    end 
  end 
  
  def destroy 
    #set_person 
    @person.destroy 
    redirect_to people_path
  end 

  private 
  def set_person
    #params = {...., id: "1"} goes into params hash to find id
    # will grab the id from the url and go into the db to find person 
    @person = Person.find(params[:id])
  end 

  def person_params
    params.require(:person).permit(:first_name, :last_name, :avatar, :form, :email)
  end 
end
