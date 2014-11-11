class InstitutionController < ApplicationController
  def create
  	@institution = Institution.create(name: params[:name].downcase , grade: params[:grade])

    if @institution.save
      @institution
    else
      @institution = "La institución no ha podido ser agregada debido a que ha sido creada previamente"
    end
  	render json: @institution

    ########## http://localhost:3000/institution/create?name=escuela%superior%de%economía&grade=superior
  end

  def suggest
    @query = Institution.search do
      fulltext "#{params[:search]}"
    end

    if @query.total != 0
      @query = @query.results
    else
      @query = "No hay nigun resultado de busqueda"
    end
    render json: @query

    ######## http://localhost:3000/institution/suggest?search=ins
  end

  def add_to_institution
  end
end
