class ImportsController < ApplicationController
  def new
      @import = Import.new
  end

  def create
    f = params[:import][:file]
    File.foreach(f.path).with_index do |line, index|
        splitLine = line.split(',') #handle csv files
        splitLine.each do |entry|
            entry.tr!("\r\n", "")
            entry.titleize!
            next if entry.length < 1
            next if not Ingredient.where(name: entry).empty?
            ingredient = Ingredient.new(name: entry)
            ingredient.save
        end
    end
    redirect_to "/ingredients"
  end
end