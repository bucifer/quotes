class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :edit, :update, :destroy]
  before_filter :authenticated, except: [:index, :show]

  def authenticated
    unless current_user
      flash[:danger] = "You need to be admin (or Terry) to perform that action!"
      redirect_to root_path
      return false
    end
  end

  # GET /quotes
  # GET /quotes.json
  def index
    @quotes = Quote.sorted
  end

  # GET /quotes/1
  # GET /quotes/1.json
  def show
    @quote = Quote.find(params[:id])
  end

  # GET /quotes/new
  def new
    #new action DISPLAYS the new form page, create PROCESSES the new data
    @quote = Quote.new
    #apparently this doesn't really do anything but good to specify
  end

  def create
    #we don't need a TEMPLATE for create beucase it either redirects or renders
    #create PROCESSES the object data
    #instantiate a new object using form parameters and quote_params which assings permissions parameters
    @quote = Quote.new(quote_params)
    #if save succeeds, redirect to index root page
    if @quote.save
      flash[:success] = "Quote #{@quote.pkey} Created!"
      redirect_to root_path
    #if save fails, redisplay the form so user can fix problems
    else
      render('new')
    end
  end

  # GET /quotes/1/edit
  def edit
    @quote = Quote.find(params[:id])
  end

  # PATCH/PUT /quotes/1
  # PATCH/PUT /quotes/1.json
  def update
    #find an existing object using form parameters
    @quote = Quote.find(params[:id])
    if @quote.update_attributes(quote_params)
      flash[:notice] = "Quote #{@quote.pkey} Updated!"
      redirect_to(:action => 'show', :id => @quote.id)
    else 
      render('edit')
    end
  end

  # DELETE /quotes/1
  # DELETE /quotes/1.json
  def destroy
    @quote = Quote.find(params[:id]).destroy
    flash[:alert] = "Quote #{@quote.pkey} Deleted!"
    redirect_to root_path
  end


  def author
  end

  #it's private so only the controller can use it to do its work. 
  #So it prevents from called as an action.
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote
      @quote = Quote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quote_params
      params.require(:quote).permit(:category, :author, :quotetext)
    end
end
