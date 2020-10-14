class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    folder_files = Dir[path + "/*"]
    folder_files.collect{|file| file.split("/")[-1]}
  end

  def import
    files.each {|file| Song.new_by_filename} 
  end
end