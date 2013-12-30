class EntriesController < ApplicationController

  def index
    @entries = Entry.all.order(:created_at).reverse_order
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    @entry.save
    if @entry.errors.any?
      render action: 'new'
    else
      redirect_to @entry
    end
  end

  def entry_params
    params.require(:entry).permit(:title, :body)
  end

  def show
    @entry = Entry.find(params[:id])
  end

end
