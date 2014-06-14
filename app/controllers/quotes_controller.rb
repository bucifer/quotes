class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :edit, :update, :destroy]

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

  # GET /quotes/1/edit
  def edit
  end

  # POST /quotes
  # POST /quotes.json
  def create
    #we don't need a TEMPLATE for create beucase it either redirects or renders
    #create PROCESSES the object data
    #instantiate a new object using form parameters
    @quote = Quote.new(quote_params)
    #if save succeeds, redirect to index root page
    if @quote.save
      redirect_to(:action => 'index')
    #if save fails, redisplay the form so user can fix problems
    else
      render('new')
    end
  end

  # PATCH/PUT /quotes/1
  # PATCH/PUT /quotes/1.json
  def update
    respond_to do |format|
      if @quote.update(quote_params)
        format.html { redirect_to @quote, notice: 'Quote was successfully updated.' }
        format.json { render :show, status: :ok, location: @quote }
      else
        format.html { render :edit }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quotes/1
  # DELETE /quotes/1.json
  def destroy
    @quote.destroy
    respond_to do |format|
      format.html { redirect_to quotes_url, notice: 'Quote was successfully destroyed.' }
      format.json { head :no_content }
    end
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
