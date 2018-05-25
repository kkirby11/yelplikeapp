class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

#   def create
#     @page = Page.new(page_params)

  def create
    @restaurant = Restaurant.new(restaurant_params)
  if @restaurant.save
#     if @page.save
#       redirect_to page_path(@page)
#     else
#       render :new
#     end
#   end

#   private
#     def page_params
#       params.require(:page).permit(:title, :body, :author)
#     end

end

# class PagesController < ApplicationController
#   def index
#     @pages = Page.all
#   end

#   def show
#     @page = Page.find(params[:id])
#   end

#   def new
#     @page = Page.new
#   end

#   def create
#     @page = Page.new(page_params)

#     if @page.save
#       redirect_to page_path(@page)
#     else
#       render :new
#     end
#   end

#   private
#     def page_params
#       params.require(:page).permit(:title, :body, :author)
#     end

# end