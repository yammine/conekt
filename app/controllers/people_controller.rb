class PeopleController < ApplicationController

  def index

  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    @person.save
    redirect_to root_path
  end

  def destroy

  end

  private

  def person_params
    params.require(:person).permit(:first_name, :last_name, :age, :gender)
  end



end
