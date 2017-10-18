class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end
  def show
    puts "Hola_______________________----------"
    puts params[:pizza]
    @pizza = Pizza.find(params[:id])

  end
  def new
    @pizza = Pizza.new
  end
  def edit
    @pizza = Pizza.find(params[:id])
    redirect_to pizzas_path
  end
  def create
    @pizza = Pizza.new(pizza_params)
    if @pizza.save
      redirect_to pizzas_path
    else
      render :new
    end
  end
  def update_vote
    @pizza = Pizza.find(params[:id])
    puts @pizza.name
    cont = params[:votes]
    puts "Esto__*************************"
    puts params[:votes]
    #cont = cont. + 1
    #@pizza.votes = cont

    puts "Votó"
    redirect_to pizzas_path
  end
  def destroy
    @pizza = Pizza.find(params[:id])
    @pizza.destroy
    redirect_to pizzas_path
  end
  def update
    @pizza = Pizza.find(params[:id])
    if @pizza.update(pizza_params)
      redirect_to pizzas_path
    else
      render :edit
    end
  end

  private
  def pizza_params
    params.require(:pizza).permit( :name, :ingredients,:votes)
  end
end
