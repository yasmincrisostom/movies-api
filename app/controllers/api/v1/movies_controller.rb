class Api::V1::MoviesController < Api::V1::BaseController
  def index
    if params[:query].present?
      sql_query = "year ILIKE :query OR genre ILIKE :query OR country ILIKE :query"
      @movies = Movie.where(sql_query, query: "%#{params[:query]}%")
    else
      @movies = Movie.all.order(:year)
    end
  end

  # def year
  #   @movies = Movie.where(year: "1971")
  # end
end
