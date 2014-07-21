class PeopleController < ApplicationController

  before_action :set_person, except: [:index, :new, :create]

  def index
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def show 
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @person.update_attributes(person_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @person.destroy
    redirect_to root_path
  end

  private

  def set_person
    @person = Person.find(params[:id])
  end

  def person_params
    params.require(:person).permit(:first_name, :last_name, :age, :gender)
  end



end
