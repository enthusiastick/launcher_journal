class EntriesController < ActionController::Base

  def index
    @entries = Entry.all
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    @entry.save
    redirect_to @entry
  end

  def entry_params
    params.require(:entry).permit(:title, :body)
  end

  def show
    @entry = Entry.find(params[:id])
  end

end
