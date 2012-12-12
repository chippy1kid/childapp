class ChildrenController < ApplicationController
  def index


  	@children = Children.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @children }
      format.xml { render xml: @children }
    end
    
  end

  def index
    @children = Children.search(params[:search])
  end

  

  def new
  	@children = Children.new

  end

   def create
    @children = Children.new(params[:children])

    respond_to do |format|
      if @children.save
        format.html { redirect_to @children, notice: 'User was successfully created.' }
        format.json { render json: @children, status: :created, location: @children }
      else
        format.html { render action: "new" }
        format.json { render json: @children.errors, status: :unprocessable_entity }
      end
    end
  end


  def show
  	@children = Children.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @children }
      format.xml { render xml: @children }
    end
  end

  def edit
  	@children = Children.find(params[:id])
  end

  

  def update
    @children = Children.find(params[:id])

    respond_to do |format|
      if @children.update_attributes(params[:children])
        format.html { redirect_to @children, notice: 'children was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @children.errors, status: :unprocessable_entity }
      end
    end
  end
 

  def destroy
    @children = Children.find(params[:id])
    @children.destroy

    respond_to do |format|
      format.html { redirect_to children_url }
      format.json { head :no_content }
    end
  end

end
