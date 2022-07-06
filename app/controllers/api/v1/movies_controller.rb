class Api::V1::MoviesController < Api::V1::BaseController
  def index
    @movies = Movie.all.order(:year)
  end
end
