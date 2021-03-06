class PortfoliosController < ApplicationController

    layout 'portfolio'
    
    access  all: [:show, :index], 
    user: {except: [:destroy, :new, :create, :edit, :update, :delete]}, 
    site_admin: :all

    def index
        @portfolios = Portfolio.by_position
        # @portfolios = Portfolio.all
        # @portfolios = Portfolio.react
        # @portfolios = Portfolio.ruby_on_rails_portfolios

    end

    def new
        @portfolio = Portfolio.new

        3.times { @portfolio.technologies.build }
    end

    def create
        @portfolio = Portfolio.new(portfolio_params)

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
            if @portfolio.update(portfolio_params)
              format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }
            else
              format.html { render :edit }
            end
          end
    end

    def show
        @portfolio = Portfolio.find(params[:id])

    end

    def destroy
        @portfolio = Portfolio.find(params[:id])

        @portfolio.destroy
        respond_to do |format|
            format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully deleted.' }
        end

    end


    private

    def portfolio_params
        params.require(:portfolio).permit(
                                        :title, 
                                        :subtitle, 
                                        :body, 
                                        :main_image,
                                        technologies_attributes: [:name] 
                                        )
    end

end
