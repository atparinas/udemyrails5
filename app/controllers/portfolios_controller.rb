class PortfoliosController < ApplicationController

    def index
        @portfolios = Portfolio.all

    end

    def new
        @portfolio = Portfolio.new
    end

    def create
        @portfolio = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body, :main_image))

        respond_to do |format|
            if @portfolio.save
                format.html { redirect_to portfolios_path, notice: "Portfolio is now live"}
            else
                format.html { render :new }
            end
        end
      

    end

    def edit
        @portfolio = Portfolio.find(params[:id])
    end

    def update
        @portfolio = Portfolio.find(params[:id])

        respond_to do |format|
            if @portfolio.update(params.require(:portfolio).permit(:title, :subtitle, :body, :main_image))
              format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }
            else
              format.html { render :edit }
            end
          end
    end

    def show
        @portfolio = Portfolio.find(params[:id])
        
    end

end
