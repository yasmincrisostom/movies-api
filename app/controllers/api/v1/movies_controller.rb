class Api::V1::RestaurantsController < Api::V1::BaseController
  def index
    @movies = Movie.all
  end
end
