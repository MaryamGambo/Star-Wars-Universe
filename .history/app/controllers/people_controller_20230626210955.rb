class PeopleController < ApplicationController
  before_action :set_person, only: %i[ show edit update destroy ]

  # GET /people or /people.json
  def index
    if params[:species_id]
      @species = Species.find(params[:species_id])
      @people = @species.people
    elsif params[:planet_id]
      @planet = Planet.find(params[:planet_id])
      @people = @planet.people
    else
      @people = Person.all
    end
  end

  def starships
    @person = Person.find(params[:person_id])
    @starships = @person.starships
    @characters = Person.joins(:starships).where(starships: { id: @starships })
    @characters = Person.joins(:vehicles).where(vehicles: { id: @vehicles })
  end

  def vehicles
    @person = Person.find(params[:person_id])
    @vehicles = @person.vehicles
  end

  def films
    @person = Person.find(params[:person_id])
    @films = @person.films
  end

  # GET /people/1 or /people/1.json
  def show
    @person = Person.find(params[:id])
    @species = @person.species
    @planet = @person.planet
    @species_people = @species ? @species.people : []
    @planet_people = @planet ? @planet.people : []
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people or /people.json
  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to person_url(@person), notice: "Person was successfully created." }
        format.json { render :show, status: :created, location: @person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people/1 or /people/1.json
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to person_url(@person), notice: "Person was successfully updated." }
        format.json { render :show, status: :ok, location: @person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1 or /people/1.json
  def destroy
    @person.destroy

    respond_to do |format|
      format.html { redirect_to people_url, notice: "Person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def person_params
      params.require(:person).permit(:name, :height, :mass, :hair_color, :skin_color, :eye_color, :birth_year, :gender)
    end
end
