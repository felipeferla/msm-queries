class DirectorsController < ApplicationController
  def index
    render ({ :template => "director_templates/list" })
  end

  def show
    the_id = params.fetch("the_id")
    matching_records = Director.where({ :id => the_id })

    @the_director = matching_records.at(0)

    render ({ :template => "director_templates/details" })
  end

  def show_youngest_director
    sorted_relations = Director.all.order({ :dob => :desc })
    @youngest_director = sorted_relations.at(0).name
    @youngest_director_id = sorted_relations.at(0).id
    @youngest_director_dob = sorted_relations.at(0).dob.strftime("%B %e, %Y")
    


    render ({ :template => "director_templates/youngest" })
  end

  def show_oldest_director
    sorted_relations = Director.all.order({ :dob => :desc })
    @oldest_director = sorted_relations.at(-1).name
    @oldest_director_id = sorted_relations.at(-1).id
    @oldest_director_dob = sorted_relations.at(-1).dob.strftime("%B %e, %Y")

    
    render ({ :template => "director_templates/oldest" })
  end

end
