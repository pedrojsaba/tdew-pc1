class BookMarksController < ApplicationController
  # GET /book_marks
  # GET /book_marks.json
  def index
    @book_marks = BookMark.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @book_marks }
    end
  end

  # GET /book_marks/1
  # GET /book_marks/1.json
  def show
    @book_mark = BookMark.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @book_mark }
    end
  end

  # GET /book_marks/new
  # GET /book_marks/new.json
  def new
    @book_mark = BookMark.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @book_mark }
    end
  end

  # GET /book_marks/1/edit
  def edit
    @book_mark = BookMark.find(params[:id])
  end

  # POST /book_marks
  # POST /book_marks.json
  def create
    @book_mark = BookMark.new(params[:book_mark])

    respond_to do |format|
      if @book_mark.save
        format.html { redirect_to @book_mark, notice: 'Book mark was successfully created.' }
        format.json { render json: @book_mark, status: :created, location: @book_mark }
      else
        format.html { render action: "new" }
        format.json { render json: @book_mark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /book_marks/1
  # PUT /book_marks/1.json
  def update
    @book_mark = BookMark.find(params[:id])

    respond_to do |format|
      if @book_mark.update_attributes(params[:book_mark])
        format.html { redirect_to @book_mark, notice: 'Book mark was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @book_mark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_marks/1
  # DELETE /book_marks/1.json
  def destroy
    @book_mark = BookMark.find(params[:id])
    @book_mark.destroy

    respond_to do |format|
      format.html { redirect_to book_marks_url }
      format.json { head :ok }
    end
  end
end
