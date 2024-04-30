class DirectorsController < ApplicationController

  def index
    render ({:template => "director_templates/list"})
  end

  def do_details
    @id_tag = params.fetch("id")
    render ({:template => "director_templates/details"})

  end


end
