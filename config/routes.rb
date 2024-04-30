Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })

  get("/directors/youngest", { :controller => "directors", :action => "show_youngest_director" })

  get("/directors/eldest", { :controller => "directors", :action => "show_oldest_director" })

  get("/directors/:the_id", { :controller => "directors", :action => "show" })

  get("/actors", { :controller => "actors", :action => "index" })

  get("/actors/:the_id", { :controller => "actors", :action => "show" })

  get("/movies", { :controller => "movies", :action => "index" })

  get("/movies/:the_id", { :controller => "movies", :action => "show" })

  
end
